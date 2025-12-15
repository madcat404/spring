package com.taerinsoft.product.web.kwangjinwintec.site.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

@Configuration
public class EnvironmentConfiguration {
    @Configuration
    @PropertySource(
            ignoreResourceNotFound = true,
            value = {
                    "classpath:/properties/database.properties",
                    "file:/data/etc/tr/product/kwangjinwintec/database.properties",
                    "classpath:/properties/common.properties",
                    "file:/data/etc/tr/product/kwangjinwintec/common.properties"
            }
    )
    public static class ProductionProperties {
        @Bean
        public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer() {
            return new PropertySourcesPlaceholderConfigurer();
        }
    }
}