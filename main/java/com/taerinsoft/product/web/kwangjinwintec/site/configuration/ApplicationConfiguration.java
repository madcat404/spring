package com.taerinsoft.product.web.kwangjinwintec.site.configuration;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.hibernate4.Hibernate4Module;
import com.maxmind.geoip.LookupService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.http.MediaType;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestOperations;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Configuration
public class ApplicationConfiguration {

    @Bean
    public RestOperations restOperations() {
        HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
        factory.setConnectTimeout(3000);
        factory.setReadTimeout(5000);
        RestTemplate restTemplate = new RestTemplate(factory);
        StringHttpMessageConverter stringMessageConverter = new StringHttpMessageConverter(StandardCharsets.UTF_8);
        MappingJackson2HttpMessageConverter jackson2Converter = new MappingJackson2HttpMessageConverter();
//        jackson2Converter.setSupportedMediaTypes(Collections.singletonList(MediaType.APPLICATION_FORM_URLENCODED));
        List<HttpMessageConverter<?>> converters = new ArrayList<>();
        converters.add(jackson2Converter);
        converters.add(stringMessageConverter);
        restTemplate.setMessageConverters(converters);
        return restTemplate;
    }

    private static class CustomCharacterEscapes extends CharacterEscapes {
        private static final long serialVersionUID = -2597039495921071413L;
        private final int[] _asciiEscapes;

        CustomCharacterEscapes() {
            _asciiEscapes = standardAsciiEscapesForJSON();
            _asciiEscapes['/'] = CharacterEscapes.ESCAPE_STANDARD;
        }

        @Override
        public int[] getEscapeCodesForAscii() {
            return _asciiEscapes;
        }

        @Override
        public SerializableString getEscapeSequence(int i) {
            return null;
        }
    }

    @Bean
    public
    @Primary
    ObjectMapper objectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        Hibernate4Module hibernate4Module = new Hibernate4Module();
        hibernate4Module.disable(Hibernate4Module.Feature.USE_TRANSIENT_ANNOTATION);
        objectMapper.registerModule(hibernate4Module);
        objectMapper.getFactory().setCharacterEscapes(new CustomCharacterEscapes());
        return objectMapper;
    }

}