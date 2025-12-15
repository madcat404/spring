package com.taerinsoft.product.web.kwangjinwintec.site.configuration;

import com.taerinsoft.product.web.kwangjinwintec.site.configuration.core.handler.CustomAuthenticationFailedHandler;
import com.taerinsoft.product.web.kwangjinwintec.site.configuration.core.handler.CustomAuthenticationSuccessHandler;
import com.taerinsoft.product.web.kwangjinwintec.site.configuration.core.handler.CustomerLogoutSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletListenerRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.session.HttpSessionEventPublisher;

@Order(Ordered.LOWEST_PRECEDENCE - 8)
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    private final UserDetailsService siteUserDetailService;

    private final CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    private final CustomAuthenticationFailedHandler customAuthenticationFailedHandler;

    private final CustomerLogoutSuccessHandler customerLogoutSuccessHandler;

    @Autowired
    public SecurityConfiguration(UserDetailsService siteUserDetailService, CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler,
                                 CustomAuthenticationFailedHandler customAuthenticationFailedHandler, CustomerLogoutSuccessHandler customerLogoutSuccessHandler) {
        this.siteUserDetailService = siteUserDetailService;
        this.customAuthenticationSuccessHandler = customAuthenticationSuccessHandler;
        this.customAuthenticationFailedHandler = customAuthenticationFailedHandler;
        this.customerLogoutSuccessHandler = customerLogoutSuccessHandler;
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(siteUserDetailService);
    }

    @Override
    public void configure(WebSecurity web) {
        web.ignoring()
                .antMatchers("/css/**")
                .antMatchers("/lib/**")
                .antMatchers("/images/**")
                .antMatchers("/upload/**")
                .antMatchers("/sound/**")
                .antMatchers("/videos/**")
                .antMatchers("/js/**")
                .antMatchers("/fonts/**")
                .antMatchers("/vendor/**")
                .antMatchers("/framework/**")
                .antMatchers("/product/**")
                .antMatchers("/register/**")
                .antMatchers("/index/**")
                .antMatchers("/session/**")
                .antMatchers("/company/**")
                .antMatchers("/test/**")
                .antMatchers("/files/**")
                .antMatchers("/api/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/test/**")
                .permitAll()
                .antMatchers("/login")
                .permitAll()
                .antMatchers("/logout")
                .permitAll()
                .antMatchers("/accessDenied")
                .permitAll()
                .antMatchers("/authentication")
                .permitAll()
                .antMatchers("/**")
                .permitAll()
                .and()
                .formLogin()
                .loginPage("/login")
                .successHandler(customAuthenticationSuccessHandler)
                .failureHandler(customAuthenticationFailedHandler)
                .and()
                .logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/index")
                .logoutSuccessHandler(customerLogoutSuccessHandler)
                .and()
                .exceptionHandling()
                .accessDeniedPage("/accessDenied")
                .and()
                .csrf()
                .disable();

        http.requiresChannel()
                .anyRequest()
                .requiresSecure();  // 모든 요청을 HTTPS로 리다이렉트

        /*
        이것중 뭐때문에 https 리다이렉트가 안되는지 모르겠음

        // 세션 관리 설정
        http.sessionManagement()
                .maximumSessions(1)
                .expiredUrl("/login?error=duplication")
                .sessionRegistry(sessionRegistry());

        // 보안 헤더 설정 (HSTS 비활성화 및 동일 출처에서만 프레임 로드 허용)
        http.headers()
                .frameOptions().sameOrigin()
                .httpStrictTransportSecurity().disable();
        */
    }

    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }

    @Bean
    public ServletListenerRegistrationBean<HttpSessionEventPublisher> httpSessionEventPublisher() {
        return new ServletListenerRegistrationBean<>(new HttpSessionEventPublisher());
    }
}