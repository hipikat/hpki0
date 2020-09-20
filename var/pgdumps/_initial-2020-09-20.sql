--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO hipikat;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO hipikat;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO hipikat;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO hipikat;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO hipikat;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO hipikat;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO hipikat;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO hipikat;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO hipikat;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO hipikat;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO hipikat;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO hipikat;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: bootstrap4_alerts_bootstrap4alerts; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_alerts_bootstrap4alerts (
    cmsplugin_ptr_id integer NOT NULL,
    alert_context character varying(255) NOT NULL,
    alert_dismissable boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_alerts_bootstrap4alerts OWNER TO hipikat;

--
-- Name: bootstrap4_badge_bootstrap4badge; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_badge_bootstrap4badge (
    cmsplugin_ptr_id integer NOT NULL,
    badge_text character varying(255) NOT NULL,
    badge_context character varying(255) NOT NULL,
    badge_pills boolean NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_badge_bootstrap4badge OWNER TO hipikat;

--
-- Name: bootstrap4_card_bootstrap4card; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_card_bootstrap4card (
    cmsplugin_ptr_id integer NOT NULL,
    card_type character varying(255) NOT NULL,
    card_context character varying(255) NOT NULL,
    card_alignment character varying(255) NOT NULL,
    card_outline boolean NOT NULL,
    card_text_color character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_card_bootstrap4card OWNER TO hipikat;

--
-- Name: bootstrap4_card_bootstrap4cardinner; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_card_bootstrap4cardinner (
    cmsplugin_ptr_id integer NOT NULL,
    inner_type character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_card_bootstrap4cardinner OWNER TO hipikat;

--
-- Name: bootstrap4_carousel_bootstrap4carousel; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_carousel_bootstrap4carousel (
    cmsplugin_ptr_id integer NOT NULL,
    template character varying(255) NOT NULL,
    carousel_interval integer NOT NULL,
    carousel_controls boolean NOT NULL,
    carousel_indicators boolean NOT NULL,
    carousel_keyboard boolean NOT NULL,
    carousel_pause character varying(255) NOT NULL,
    carousel_ride character varying(255) NOT NULL,
    carousel_wrap boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL,
    carousel_aspect_ratio character varying(255) NOT NULL
);


ALTER TABLE public.bootstrap4_carousel_bootstrap4carousel OWNER TO hipikat;

--
-- Name: bootstrap4_carousel_bootstrap4carouselslide; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_carousel_bootstrap4carouselslide (
    template character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    carousel_content text NOT NULL,
    tag_type character varying(255) NOT NULL,
    carousel_image_id integer,
    internal_link_id integer,
    file_link_id integer
);


ALTER TABLE public.bootstrap4_carousel_bootstrap4carouselslide OWNER TO hipikat;

--
-- Name: bootstrap4_collapse_bootstrap4collapse; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_collapse_bootstrap4collapse (
    cmsplugin_ptr_id integer NOT NULL,
    siblings character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_collapse_bootstrap4collapse OWNER TO hipikat;

--
-- Name: bootstrap4_collapse_bootstrap4collapsecontainer; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_collapse_bootstrap4collapsecontainer (
    cmsplugin_ptr_id integer NOT NULL,
    identifier character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_collapse_bootstrap4collapsecontainer OWNER TO hipikat;

--
-- Name: bootstrap4_collapse_bootstrap4collapsetrigger; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_collapse_bootstrap4collapsetrigger (
    cmsplugin_ptr_id integer NOT NULL,
    identifier character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_collapse_bootstrap4collapsetrigger OWNER TO hipikat;

--
-- Name: bootstrap4_content_bootstrap4blockquote; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_content_bootstrap4blockquote (
    cmsplugin_ptr_id integer NOT NULL,
    quote_content text NOT NULL,
    quote_origin text NOT NULL,
    quote_alignment character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_content_bootstrap4blockquote OWNER TO hipikat;

--
-- Name: bootstrap4_content_bootstrap4code; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_content_bootstrap4code (
    cmsplugin_ptr_id integer NOT NULL,
    code_content text NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_content_bootstrap4code OWNER TO hipikat;

--
-- Name: bootstrap4_content_bootstrap4figure; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_content_bootstrap4figure (
    cmsplugin_ptr_id integer NOT NULL,
    figure_caption character varying(255) NOT NULL,
    figure_alignment character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_content_bootstrap4figure OWNER TO hipikat;

--
-- Name: bootstrap4_grid_bootstrap4gridcolumn; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_grid_bootstrap4gridcolumn (
    cmsplugin_ptr_id integer NOT NULL,
    column_type character varying(255) NOT NULL,
    column_alignment character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL,
    xs_col integer,
    xs_order integer,
    xs_ml boolean NOT NULL,
    xs_mr boolean NOT NULL,
    sm_col integer,
    sm_order integer,
    sm_ml boolean NOT NULL,
    sm_mr boolean NOT NULL,
    md_col integer,
    md_order integer,
    md_ml boolean NOT NULL,
    md_mr boolean NOT NULL,
    lg_col integer,
    lg_order integer,
    lg_ml boolean NOT NULL,
    lg_mr boolean NOT NULL,
    xl_col integer,
    xl_order integer,
    xl_ml boolean NOT NULL,
    xl_mr boolean NOT NULL,
    lg_offset integer,
    md_offset integer,
    sm_offset integer,
    xl_offset integer,
    xs_offset integer
);


ALTER TABLE public.bootstrap4_grid_bootstrap4gridcolumn OWNER TO hipikat;

--
-- Name: bootstrap4_grid_bootstrap4gridcontainer; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_grid_bootstrap4gridcontainer (
    cmsplugin_ptr_id integer NOT NULL,
    container_type character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_grid_bootstrap4gridcontainer OWNER TO hipikat;

--
-- Name: bootstrap4_grid_bootstrap4gridrow; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_grid_bootstrap4gridrow (
    cmsplugin_ptr_id integer NOT NULL,
    vertical_alignment character varying(255) NOT NULL,
    horizontal_alignment character varying(255) NOT NULL,
    gutters boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_grid_bootstrap4gridrow OWNER TO hipikat;

--
-- Name: bootstrap4_jumbotron_bootstrap4jumbotron; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_jumbotron_bootstrap4jumbotron (
    cmsplugin_ptr_id integer NOT NULL,
    fluid boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_jumbotron_bootstrap4jumbotron OWNER TO hipikat;

--
-- Name: bootstrap4_link_bootstrap4link; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_link_bootstrap4link (
    template character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    link_type character varying(255) NOT NULL,
    link_context character varying(255) NOT NULL,
    link_size character varying(255) NOT NULL,
    link_outline boolean NOT NULL,
    link_block boolean NOT NULL,
    internal_link_id integer,
    icon_left character varying(255) NOT NULL,
    icon_right character varying(255) NOT NULL,
    file_link_id integer
);


ALTER TABLE public.bootstrap4_link_bootstrap4link OWNER TO hipikat;

--
-- Name: bootstrap4_listgroup_bootstrap4listgroup; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_listgroup_bootstrap4listgroup (
    cmsplugin_ptr_id integer NOT NULL,
    list_group_flush boolean NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_listgroup_bootstrap4listgroup OWNER TO hipikat;

--
-- Name: bootstrap4_listgroup_bootstrap4listgroupitem; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_listgroup_bootstrap4listgroupitem (
    cmsplugin_ptr_id integer NOT NULL,
    list_context character varying(255) NOT NULL,
    list_state character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_listgroup_bootstrap4listgroupitem OWNER TO hipikat;

--
-- Name: bootstrap4_media_bootstrap4media; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_media_bootstrap4media (
    cmsplugin_ptr_id integer NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_media_bootstrap4media OWNER TO hipikat;

--
-- Name: bootstrap4_media_bootstrap4mediabody; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_media_bootstrap4mediabody (
    cmsplugin_ptr_id integer NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_media_bootstrap4mediabody OWNER TO hipikat;

--
-- Name: bootstrap4_picture_bootstrap4picture; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_picture_bootstrap4picture (
    template character varying(255) NOT NULL,
    external_picture character varying(255),
    width integer,
    height integer,
    alignment character varying(255) NOT NULL,
    caption_text text,
    attributes text NOT NULL,
    link_url character varying(2040),
    link_target character varying(255) NOT NULL,
    link_attributes text NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_upscale boolean NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    picture_fluid boolean NOT NULL,
    picture_rounded boolean NOT NULL,
    picture_thumbnail boolean NOT NULL,
    link_page_id integer,
    picture_id integer,
    thumbnail_options_id integer,
    use_responsive_image character varying(7) NOT NULL,
    CONSTRAINT bootstrap4_picture_bootstrap4picture_height_check CHECK ((height >= 0)),
    CONSTRAINT bootstrap4_picture_bootstrap4picture_width_check CHECK ((width >= 0))
);


ALTER TABLE public.bootstrap4_picture_bootstrap4picture OWNER TO hipikat;

--
-- Name: bootstrap4_tabs_bootstrap4tab; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_tabs_bootstrap4tab (
    cmsplugin_ptr_id integer NOT NULL,
    template character varying(255) NOT NULL,
    tab_type character varying(255) NOT NULL,
    tab_alignment character varying(255) NOT NULL,
    tab_index integer,
    tab_effect character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL,
    CONSTRAINT bootstrap4_tabs_bootstrap4tab_tab_index_check CHECK ((tab_index >= 0))
);


ALTER TABLE public.bootstrap4_tabs_bootstrap4tab OWNER TO hipikat;

--
-- Name: bootstrap4_tabs_bootstrap4tabitem; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_tabs_bootstrap4tabitem (
    cmsplugin_ptr_id integer NOT NULL,
    tab_title character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_tabs_bootstrap4tabitem OWNER TO hipikat;

--
-- Name: bootstrap4_utilities_bootstrap4spacing; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.bootstrap4_utilities_bootstrap4spacing (
    cmsplugin_ptr_id integer NOT NULL,
    space_property character varying(255) NOT NULL,
    space_sides character varying(255) NOT NULL,
    space_size character varying(255) NOT NULL,
    space_device character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.bootstrap4_utilities_bootstrap4spacing OWNER TO hipikat;

--
-- Name: cms_aliaspluginmodel; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);


ALTER TABLE public.cms_aliaspluginmodel OWNER TO hipikat;

--
-- Name: cms_cmsplugin; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_cmsplugin (
    id integer NOT NULL,
    "position" smallint NOT NULL,
    language character varying(15) NOT NULL,
    plugin_type character varying(50) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    parent_id integer,
    placeholder_id integer,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    path character varying(255) NOT NULL,
    CONSTRAINT cms_cmsplugin_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_cmsplugin_numchild_check CHECK ((numchild >= 0)),
    CONSTRAINT cms_cmsplugin_position_check CHECK (("position" >= 0))
);


ALTER TABLE public.cms_cmsplugin OWNER TO hipikat;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_cmsplugin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_cmsplugin_id_seq OWNER TO hipikat;

--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;


--
-- Name: cms_globalpagepermission; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_globalpagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    group_id integer,
    user_id integer
);


ALTER TABLE public.cms_globalpagepermission OWNER TO hipikat;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_id_seq OWNER TO hipikat;

--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;


--
-- Name: cms_globalpagepermission_sites; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.cms_globalpagepermission_sites OWNER TO hipikat;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_globalpagepermission_sites_id_seq OWNER TO hipikat;

--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;


--
-- Name: cms_page; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_page (
    id integer NOT NULL,
    created_by character varying(255) NOT NULL,
    changed_by character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    publication_date timestamp with time zone,
    publication_end_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    soft_root boolean NOT NULL,
    reverse_id character varying(40),
    navigation_extenders character varying(80),
    template character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    limit_visibility_in_menu smallint,
    is_home boolean NOT NULL,
    application_urls character varying(200),
    application_namespace character varying(200),
    publisher_is_draft boolean NOT NULL,
    languages character varying(255),
    xframe_options integer NOT NULL,
    publisher_public_id integer,
    is_page_type boolean NOT NULL,
    node_id integer NOT NULL
);


ALTER TABLE public.cms_page OWNER TO hipikat;

--
-- Name: cms_page_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_id_seq OWNER TO hipikat;

--
-- Name: cms_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;


--
-- Name: cms_page_placeholders; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);


ALTER TABLE public.cms_page_placeholders OWNER TO hipikat;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_page_placeholders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_page_placeholders_id_seq OWNER TO hipikat;

--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;


--
-- Name: cms_pagepermission; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_pagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    grant_on integer NOT NULL,
    group_id integer,
    page_id integer,
    user_id integer
);


ALTER TABLE public.cms_pagepermission OWNER TO hipikat;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_pagepermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_pagepermission_id_seq OWNER TO hipikat;

--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;


--
-- Name: cms_pageuser; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageuser OWNER TO hipikat;

--
-- Name: cms_pageusergroup; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);


ALTER TABLE public.cms_pageusergroup OWNER TO hipikat;

--
-- Name: cms_placeholder; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);


ALTER TABLE public.cms_placeholder OWNER TO hipikat;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_placeholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_placeholder_id_seq OWNER TO hipikat;

--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;


--
-- Name: cms_placeholderreference; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);


ALTER TABLE public.cms_placeholderreference OWNER TO hipikat;

--
-- Name: cms_staticplaceholder; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_staticplaceholder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    dirty boolean NOT NULL,
    creation_method character varying(20) NOT NULL,
    draft_id integer,
    public_id integer,
    site_id integer
);


ALTER TABLE public.cms_staticplaceholder OWNER TO hipikat;

--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_staticplaceholder_id_seq OWNER TO hipikat;

--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;


--
-- Name: cms_title; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_title (
    id integer NOT NULL,
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_title character varying(255),
    menu_title character varying(255),
    meta_description text,
    slug character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    has_url_overwrite boolean NOT NULL,
    redirect character varying(2048),
    creation_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    publisher_is_draft boolean NOT NULL,
    publisher_state smallint NOT NULL,
    page_id integer NOT NULL,
    publisher_public_id integer
);


ALTER TABLE public.cms_title OWNER TO hipikat;

--
-- Name: cms_title_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_title_id_seq OWNER TO hipikat;

--
-- Name: cms_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;


--
-- Name: cms_treenode; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_treenode (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    parent_id integer,
    site_id integer NOT NULL,
    CONSTRAINT cms_treenode_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_treenode_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE public.cms_treenode OWNER TO hipikat;

--
-- Name: cms_treenode_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_treenode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_treenode_id_seq OWNER TO hipikat;

--
-- Name: cms_treenode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;


--
-- Name: cms_urlconfrevision; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);


ALTER TABLE public.cms_urlconfrevision OWNER TO hipikat;

--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_urlconfrevision_id_seq OWNER TO hipikat;

--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;


--
-- Name: cms_usersettings; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.cms_usersettings OWNER TO hipikat;

--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.cms_usersettings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cms_usersettings_id_seq OWNER TO hipikat;

--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO hipikat;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO hipikat;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO hipikat;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO hipikat;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO hipikat;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO hipikat;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO hipikat;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO hipikat;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO hipikat;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: djangocms_file_file; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_file_file (
    cmsplugin_ptr_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    link_title character varying(255) NOT NULL,
    file_src_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    show_file_size boolean NOT NULL
);


ALTER TABLE public.djangocms_file_file OWNER TO hipikat;

--
-- Name: djangocms_file_folder; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);


ALTER TABLE public.djangocms_file_folder OWNER TO hipikat;

--
-- Name: djangocms_googlemap_googlemap; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_googlemap_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    zoom smallint NOT NULL,
    lat double precision,
    lng double precision,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    scrollwheel boolean NOT NULL,
    double_click_zoom boolean NOT NULL,
    draggable boolean NOT NULL,
    keyboard_shortcuts boolean NOT NULL,
    pan_control boolean NOT NULL,
    zoom_control boolean NOT NULL,
    street_view_control boolean NOT NULL,
    style text NOT NULL,
    fullscreen_control boolean NOT NULL,
    map_type_control character varying(255) NOT NULL,
    rotate_control boolean NOT NULL,
    scale_control boolean NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_googlemap_googlemap_zoom_check CHECK ((zoom >= 0))
);


ALTER TABLE public.djangocms_googlemap_googlemap OWNER TO hipikat;

--
-- Name: djangocms_googlemap_googlemapmarker; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_googlemap_googlemapmarker (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    lat double precision,
    lng double precision,
    show_content boolean NOT NULL,
    info_content text NOT NULL,
    icon_id integer
);


ALTER TABLE public.djangocms_googlemap_googlemapmarker OWNER TO hipikat;

--
-- Name: djangocms_googlemap_googlemaproute; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_googlemap_googlemaproute OWNER TO hipikat;

--
-- Name: djangocms_icon_icon; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_icon_icon (
    cmsplugin_ptr_id integer NOT NULL,
    icon character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL
);


ALTER TABLE public.djangocms_icon_icon OWNER TO hipikat;

--
-- Name: djangocms_link_link; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_link_link (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    internal_link_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    file_link_id integer
);


ALTER TABLE public.djangocms_link_link OWNER TO hipikat;

--
-- Name: djangocms_picture_picture; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_picture_picture (
    cmsplugin_ptr_id integer NOT NULL,
    link_url character varying(2040),
    alignment character varying(255) NOT NULL,
    link_page_id integer,
    height integer,
    width integer,
    picture_id integer,
    attributes text NOT NULL,
    caption_text text,
    link_attributes text NOT NULL,
    link_target character varying(255) NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_upscale boolean NOT NULL,
    thumbnail_options_id integer,
    external_picture character varying(255),
    template character varying(255) NOT NULL,
    use_responsive_image character varying(7) NOT NULL,
    CONSTRAINT djangocms_picture_picture_height_3db3e080_check CHECK ((height >= 0)),
    CONSTRAINT djangocms_picture_picture_width_5bba3699_check CHECK ((width >= 0))
);


ALTER TABLE public.djangocms_picture_picture OWNER TO hipikat;

--
-- Name: djangocms_snippet_snippet; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.djangocms_snippet_snippet OWNER TO hipikat;

--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.djangocms_snippet_snippet_id_seq OWNER TO hipikat;

--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;


--
-- Name: djangocms_snippet_snippetptr; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);


ALTER TABLE public.djangocms_snippet_snippetptr OWNER TO hipikat;

--
-- Name: djangocms_style_style; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_style_style (
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(255) NOT NULL,
    tag_type character varying(255) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_classes character varying(255) NOT NULL,
    attributes text NOT NULL,
    id_name character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_style_style_margin_bottom_08e7c851_check CHECK ((margin_bottom >= 0)),
    CONSTRAINT djangocms_style_style_margin_left_e51dea0a_check CHECK ((margin_left >= 0)),
    CONSTRAINT djangocms_style_style_margin_right_40a4928b_check CHECK ((margin_right >= 0)),
    CONSTRAINT djangocms_style_style_margin_top_929f0506_check CHECK ((margin_top >= 0)),
    CONSTRAINT djangocms_style_style_padding_bottom_566948a6_check CHECK ((padding_bottom >= 0)),
    CONSTRAINT djangocms_style_style_padding_left_2426413b_check CHECK ((padding_left >= 0)),
    CONSTRAINT djangocms_style_style_padding_right_90146b20_check CHECK ((padding_right >= 0)),
    CONSTRAINT djangocms_style_style_padding_top_fbca5ac1_check CHECK ((padding_top >= 0))
);


ALTER TABLE public.djangocms_style_style OWNER TO hipikat;

--
-- Name: djangocms_text_ckeditor_text; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE public.djangocms_text_ckeditor_text OWNER TO hipikat;

--
-- Name: djangocms_video_videoplayer; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    parameters text NOT NULL
);


ALTER TABLE public.djangocms_video_videoplayer OWNER TO hipikat;

--
-- Name: djangocms_video_videosource; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);


ALTER TABLE public.djangocms_video_videosource OWNER TO hipikat;

--
-- Name: djangocms_video_videotrack; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);


ALTER TABLE public.djangocms_video_videotrack OWNER TO hipikat;

--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


ALTER TABLE public.easy_thumbnails_source OWNER TO hipikat;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_source_id_seq OWNER TO hipikat;

--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


ALTER TABLE public.easy_thumbnails_thumbnail OWNER TO hipikat;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnail_id_seq OWNER TO hipikat;

--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


ALTER TABLE public.easy_thumbnails_thumbnaildimensions OWNER TO hipikat;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.easy_thumbnails_thumbnaildimensions_id_seq OWNER TO hipikat;

--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;


--
-- Name: filer_clipboard; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.filer_clipboard OWNER TO hipikat;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.filer_clipboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboard_id_seq OWNER TO hipikat;

--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;


--
-- Name: filer_clipboarditem; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);


ALTER TABLE public.filer_clipboarditem OWNER TO hipikat;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.filer_clipboarditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_clipboarditem_id_seq OWNER TO hipikat;

--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;


--
-- Name: filer_file; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size bigint,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer,
    mime_type character varying(255) NOT NULL
);


ALTER TABLE public.filer_file OWNER TO hipikat;

--
-- Name: filer_file_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.filer_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_file_id_seq OWNER TO hipikat;

--
-- Name: filer_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;


--
-- Name: filer_folder; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.filer_folder OWNER TO hipikat;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.filer_folder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folder_id_seq OWNER TO hipikat;

--
-- Name: filer_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;


--
-- Name: filer_folderpermission; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);


ALTER TABLE public.filer_folderpermission OWNER TO hipikat;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.filer_folderpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_folderpermission_id_seq OWNER TO hipikat;

--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;


--
-- Name: filer_image; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);


ALTER TABLE public.filer_image OWNER TO hipikat;

--
-- Name: filer_thumbnailoption; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);


ALTER TABLE public.filer_thumbnailoption OWNER TO hipikat;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filer_thumbnailoption_id_seq OWNER TO hipikat;

--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;


--
-- Name: menus_cachekey; Type: TABLE; Schema: public; Owner: hipikat
--

CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);


ALTER TABLE public.menus_cachekey OWNER TO hipikat;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE; Schema: public; Owner: hipikat
--

CREATE SEQUENCE public.menus_cachekey_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menus_cachekey_id_seq OWNER TO hipikat;

--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hipikat
--

ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cms_cmsplugin id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);


--
-- Name: cms_globalpagepermission id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);


--
-- Name: cms_globalpagepermission_sites id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);


--
-- Name: cms_page id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);


--
-- Name: cms_page_placeholders id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);


--
-- Name: cms_pagepermission id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);


--
-- Name: cms_placeholder id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);


--
-- Name: cms_staticplaceholder id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);


--
-- Name: cms_title id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);


--
-- Name: cms_treenode id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);


--
-- Name: cms_urlconfrevision id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);


--
-- Name: cms_usersettings id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: djangocms_snippet_snippet id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);


--
-- Name: easy_thumbnails_source id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnail id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: easy_thumbnails_thumbnaildimensions id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: filer_clipboard id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);


--
-- Name: filer_clipboarditem id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);


--
-- Name: filer_file id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);


--
-- Name: filer_folder id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);


--
-- Name: filer_folderpermission id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);


--
-- Name: filer_thumbnailoption id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);


--
-- Name: menus_cachekey id; Type: DEFAULT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can use Structure mode	1	use_structure
2	Can change page	2	change_page
3	Can add permission	3	add_permission
4	Can change permission	3	change_permission
5	Can delete permission	3	delete_permission
6	Can view permission	3	view_permission
7	Can add group	4	add_group
8	Can change group	4	change_group
9	Can delete group	4	delete_group
10	Can view group	4	view_group
11	Can add user	5	add_user
12	Can change user	5	change_user
13	Can delete user	5	delete_user
14	Can view user	5	view_user
15	Can add content type	6	add_contenttype
16	Can change content type	6	change_contenttype
17	Can delete content type	6	delete_contenttype
18	Can view content type	6	view_contenttype
19	Can add session	7	add_session
20	Can change session	7	change_session
21	Can delete session	7	delete_session
22	Can view session	7	view_session
23	Can add log entry	8	add_logentry
24	Can change log entry	8	change_logentry
25	Can delete log entry	8	delete_logentry
26	Can view log entry	8	view_logentry
27	Can add site	9	add_site
28	Can change site	9	change_site
29	Can delete site	9	delete_site
30	Can view site	9	view_site
31	Can add cms plugin	10	add_cmsplugin
32	Can change cms plugin	10	change_cmsplugin
33	Can delete cms plugin	10	delete_cmsplugin
34	Can view cms plugin	10	view_cmsplugin
35	Can add alias plugin model	11	add_aliaspluginmodel
36	Can change alias plugin model	11	change_aliaspluginmodel
37	Can delete alias plugin model	11	delete_aliaspluginmodel
38	Can view alias plugin model	11	view_aliaspluginmodel
39	Can add Page global permission	12	add_globalpagepermission
40	Can change Page global permission	12	change_globalpagepermission
41	Can delete Page global permission	12	delete_globalpagepermission
42	Can view Page global permission	12	view_globalpagepermission
43	Can add page	2	add_page
44	Can delete page	2	delete_page
45	Can view page	2	view_page
46	Can publish page	2	publish_page
47	Can edit static placeholders	2	edit_static_placeholder
48	Can add Page permission	13	add_pagepermission
49	Can change Page permission	13	change_pagepermission
50	Can delete Page permission	13	delete_pagepermission
51	Can view Page permission	13	view_pagepermission
52	Can add User (page)	14	add_pageuser
53	Can change User (page)	14	change_pageuser
54	Can delete User (page)	14	delete_pageuser
55	Can view User (page)	14	view_pageuser
56	Can add User group (page)	15	add_pageusergroup
57	Can change User group (page)	15	change_pageusergroup
58	Can delete User group (page)	15	delete_pageusergroup
59	Can view User group (page)	15	view_pageusergroup
60	Can add placeholder	1	add_placeholder
61	Can change placeholder	1	change_placeholder
62	Can delete placeholder	1	delete_placeholder
63	Can view placeholder	1	view_placeholder
64	Can add placeholder reference	16	add_placeholderreference
65	Can change placeholder reference	16	change_placeholderreference
66	Can delete placeholder reference	16	delete_placeholderreference
67	Can view placeholder reference	16	view_placeholderreference
68	Can add static placeholder	17	add_staticplaceholder
69	Can change static placeholder	17	change_staticplaceholder
70	Can delete static placeholder	17	delete_staticplaceholder
71	Can view static placeholder	17	view_staticplaceholder
72	Can add title	18	add_title
73	Can change title	18	change_title
74	Can delete title	18	delete_title
75	Can view title	18	view_title
76	Can add user setting	19	add_usersettings
77	Can change user setting	19	change_usersettings
78	Can delete user setting	19	delete_usersettings
79	Can view user setting	19	view_usersettings
80	Can add urlconf revision	20	add_urlconfrevision
81	Can change urlconf revision	20	change_urlconfrevision
82	Can delete urlconf revision	20	delete_urlconfrevision
83	Can view urlconf revision	20	view_urlconfrevision
84	Can add cache key	23	add_cachekey
85	Can change cache key	23	change_cachekey
86	Can delete cache key	23	delete_cachekey
87	Can view cache key	23	view_cachekey
88	Can add text	24	add_text
89	Can change text	24	change_text
90	Can delete text	24	delete_text
91	Can view text	24	view_text
92	Can add clipboard	25	add_clipboard
93	Can change clipboard	25	change_clipboard
94	Can delete clipboard	25	delete_clipboard
95	Can view clipboard	25	view_clipboard
96	Can add clipboard item	26	add_clipboarditem
97	Can change clipboard item	26	change_clipboarditem
98	Can delete clipboard item	26	delete_clipboarditem
99	Can view clipboard item	26	view_clipboarditem
100	Can add file	27	add_file
101	Can change file	27	change_file
102	Can delete file	27	delete_file
103	Can view file	27	view_file
104	Can add Folder	28	add_folder
105	Can change Folder	28	change_folder
106	Can delete Folder	28	delete_folder
107	Can view Folder	28	view_folder
108	Can use directory listing	28	can_use_directory_listing
109	Can add folder permission	29	add_folderpermission
110	Can change folder permission	29	change_folderpermission
111	Can delete folder permission	29	delete_folderpermission
112	Can view folder permission	29	view_folderpermission
113	Can add image	30	add_image
114	Can change image	30	change_image
115	Can delete image	30	delete_image
116	Can view image	30	view_image
117	Can add thumbnail option	31	add_thumbnailoption
118	Can change thumbnail option	31	change_thumbnailoption
119	Can delete thumbnail option	31	delete_thumbnailoption
120	Can view thumbnail option	31	view_thumbnailoption
121	Can add source	32	add_source
122	Can change source	32	change_source
123	Can delete source	32	delete_source
124	Can view source	32	view_source
125	Can add thumbnail	33	add_thumbnail
126	Can change thumbnail	33	change_thumbnail
127	Can delete thumbnail	33	delete_thumbnail
128	Can view thumbnail	33	view_thumbnail
129	Can add thumbnail dimensions	34	add_thumbnaildimensions
130	Can change thumbnail dimensions	34	change_thumbnaildimensions
131	Can delete thumbnail dimensions	34	delete_thumbnaildimensions
132	Can view thumbnail dimensions	34	view_thumbnaildimensions
133	Can add bootstrap4 alerts	35	add_bootstrap4alerts
134	Can change bootstrap4 alerts	35	change_bootstrap4alerts
135	Can delete bootstrap4 alerts	35	delete_bootstrap4alerts
136	Can view bootstrap4 alerts	35	view_bootstrap4alerts
137	Can add bootstrap4 badge	36	add_bootstrap4badge
138	Can change bootstrap4 badge	36	change_bootstrap4badge
139	Can delete bootstrap4 badge	36	delete_bootstrap4badge
140	Can view bootstrap4 badge	36	view_bootstrap4badge
141	Can add bootstrap4 card	37	add_bootstrap4card
142	Can change bootstrap4 card	37	change_bootstrap4card
143	Can delete bootstrap4 card	37	delete_bootstrap4card
144	Can view bootstrap4 card	37	view_bootstrap4card
145	Can add bootstrap4 card inner	38	add_bootstrap4cardinner
146	Can change bootstrap4 card inner	38	change_bootstrap4cardinner
147	Can delete bootstrap4 card inner	38	delete_bootstrap4cardinner
148	Can view bootstrap4 card inner	38	view_bootstrap4cardinner
149	Can add bootstrap4 carousel	39	add_bootstrap4carousel
150	Can change bootstrap4 carousel	39	change_bootstrap4carousel
151	Can delete bootstrap4 carousel	39	delete_bootstrap4carousel
152	Can view bootstrap4 carousel	39	view_bootstrap4carousel
153	Can add bootstrap4 carousel slide	40	add_bootstrap4carouselslide
154	Can change bootstrap4 carousel slide	40	change_bootstrap4carouselslide
155	Can delete bootstrap4 carousel slide	40	delete_bootstrap4carouselslide
156	Can view bootstrap4 carousel slide	40	view_bootstrap4carouselslide
157	Can add bootstrap4 collapse	41	add_bootstrap4collapse
158	Can change bootstrap4 collapse	41	change_bootstrap4collapse
159	Can delete bootstrap4 collapse	41	delete_bootstrap4collapse
160	Can view bootstrap4 collapse	41	view_bootstrap4collapse
161	Can add bootstrap4 collapse container	42	add_bootstrap4collapsecontainer
162	Can change bootstrap4 collapse container	42	change_bootstrap4collapsecontainer
163	Can delete bootstrap4 collapse container	42	delete_bootstrap4collapsecontainer
164	Can view bootstrap4 collapse container	42	view_bootstrap4collapsecontainer
165	Can add bootstrap4 collapse trigger	43	add_bootstrap4collapsetrigger
166	Can change bootstrap4 collapse trigger	43	change_bootstrap4collapsetrigger
167	Can delete bootstrap4 collapse trigger	43	delete_bootstrap4collapsetrigger
168	Can view bootstrap4 collapse trigger	43	view_bootstrap4collapsetrigger
169	Can add bootstrap4 blockquote	44	add_bootstrap4blockquote
170	Can change bootstrap4 blockquote	44	change_bootstrap4blockquote
171	Can delete bootstrap4 blockquote	44	delete_bootstrap4blockquote
172	Can view bootstrap4 blockquote	44	view_bootstrap4blockquote
173	Can add bootstrap4 code	45	add_bootstrap4code
174	Can change bootstrap4 code	45	change_bootstrap4code
175	Can delete bootstrap4 code	45	delete_bootstrap4code
176	Can view bootstrap4 code	45	view_bootstrap4code
177	Can add bootstrap4 figure	46	add_bootstrap4figure
178	Can change bootstrap4 figure	46	change_bootstrap4figure
179	Can delete bootstrap4 figure	46	delete_bootstrap4figure
180	Can view bootstrap4 figure	46	view_bootstrap4figure
181	Can add bootstrap4 grid column	47	add_bootstrap4gridcolumn
182	Can change bootstrap4 grid column	47	change_bootstrap4gridcolumn
183	Can delete bootstrap4 grid column	47	delete_bootstrap4gridcolumn
184	Can view bootstrap4 grid column	47	view_bootstrap4gridcolumn
185	Can add bootstrap4 grid container	48	add_bootstrap4gridcontainer
186	Can change bootstrap4 grid container	48	change_bootstrap4gridcontainer
187	Can delete bootstrap4 grid container	48	delete_bootstrap4gridcontainer
188	Can view bootstrap4 grid container	48	view_bootstrap4gridcontainer
189	Can add bootstrap4 grid row	49	add_bootstrap4gridrow
190	Can change bootstrap4 grid row	49	change_bootstrap4gridrow
191	Can delete bootstrap4 grid row	49	delete_bootstrap4gridrow
192	Can view bootstrap4 grid row	49	view_bootstrap4gridrow
193	Can add bootstrap4 jumbotron	50	add_bootstrap4jumbotron
194	Can change bootstrap4 jumbotron	50	change_bootstrap4jumbotron
195	Can delete bootstrap4 jumbotron	50	delete_bootstrap4jumbotron
196	Can view bootstrap4 jumbotron	50	view_bootstrap4jumbotron
197	Can add bootstrap4 link	51	add_bootstrap4link
198	Can change bootstrap4 link	51	change_bootstrap4link
199	Can delete bootstrap4 link	51	delete_bootstrap4link
200	Can view bootstrap4 link	51	view_bootstrap4link
201	Can add bootstrap4 list group	52	add_bootstrap4listgroup
202	Can change bootstrap4 list group	52	change_bootstrap4listgroup
203	Can delete bootstrap4 list group	52	delete_bootstrap4listgroup
204	Can view bootstrap4 list group	52	view_bootstrap4listgroup
205	Can add bootstrap4 list group item	53	add_bootstrap4listgroupitem
206	Can change bootstrap4 list group item	53	change_bootstrap4listgroupitem
207	Can delete bootstrap4 list group item	53	delete_bootstrap4listgroupitem
208	Can view bootstrap4 list group item	53	view_bootstrap4listgroupitem
209	Can add bootstrap4 media	54	add_bootstrap4media
210	Can change bootstrap4 media	54	change_bootstrap4media
211	Can delete bootstrap4 media	54	delete_bootstrap4media
212	Can view bootstrap4 media	54	view_bootstrap4media
213	Can add bootstrap4 media body	55	add_bootstrap4mediabody
214	Can change bootstrap4 media body	55	change_bootstrap4mediabody
215	Can delete bootstrap4 media body	55	delete_bootstrap4mediabody
216	Can view bootstrap4 media body	55	view_bootstrap4mediabody
217	Can add bootstrap4 picture	56	add_bootstrap4picture
218	Can change bootstrap4 picture	56	change_bootstrap4picture
219	Can delete bootstrap4 picture	56	delete_bootstrap4picture
220	Can view bootstrap4 picture	56	view_bootstrap4picture
221	Can add bootstrap4 tab	57	add_bootstrap4tab
222	Can change bootstrap4 tab	57	change_bootstrap4tab
223	Can delete bootstrap4 tab	57	delete_bootstrap4tab
224	Can view bootstrap4 tab	57	view_bootstrap4tab
225	Can add bootstrap4 tab item	58	add_bootstrap4tabitem
226	Can change bootstrap4 tab item	58	change_bootstrap4tabitem
227	Can delete bootstrap4 tab item	58	delete_bootstrap4tabitem
228	Can view bootstrap4 tab item	58	view_bootstrap4tabitem
229	Can add bootstrap4 spacing	59	add_bootstrap4spacing
230	Can change bootstrap4 spacing	59	change_bootstrap4spacing
231	Can delete bootstrap4 spacing	59	delete_bootstrap4spacing
232	Can view bootstrap4 spacing	59	view_bootstrap4spacing
233	Can add file	60	add_file
234	Can change file	60	change_file
235	Can delete file	60	delete_file
236	Can view file	60	view_file
237	Can add folder	61	add_folder
238	Can change folder	61	change_folder
239	Can delete folder	61	delete_folder
240	Can view folder	61	view_folder
241	Can add icon	62	add_icon
242	Can change icon	62	change_icon
243	Can delete icon	62	delete_icon
244	Can view icon	62	view_icon
245	Can add link	63	add_link
246	Can change link	63	change_link
247	Can delete link	63	delete_link
248	Can view link	63	view_link
249	Can add picture	64	add_picture
250	Can change picture	64	change_picture
251	Can delete picture	64	delete_picture
252	Can view picture	64	view_picture
253	Can add style	65	add_style
254	Can change style	65	change_style
255	Can delete style	65	delete_style
256	Can view style	65	view_style
257	Can add Snippet	66	add_snippet
258	Can change Snippet	66	change_snippet
259	Can delete Snippet	66	delete_snippet
260	Can view Snippet	66	view_snippet
261	Can add Snippet Ptr	67	add_snippetptr
262	Can change Snippet Ptr	67	change_snippetptr
263	Can delete Snippet Ptr	67	delete_snippetptr
264	Can view Snippet Ptr	67	view_snippetptr
265	Can add google map	68	add_googlemap
266	Can change google map	68	change_googlemap
267	Can delete google map	68	delete_googlemap
268	Can view google map	68	view_googlemap
269	Can add google map marker	69	add_googlemapmarker
270	Can change google map marker	69	change_googlemapmarker
271	Can delete google map marker	69	delete_googlemapmarker
272	Can view google map marker	69	view_googlemapmarker
273	Can add google map route	70	add_googlemaproute
274	Can change google map route	70	change_googlemaproute
275	Can delete google map route	70	delete_googlemaproute
276	Can view google map route	70	view_googlemaproute
277	Can add video player	71	add_videoplayer
278	Can change video player	71	change_videoplayer
279	Can delete video player	71	delete_videoplayer
280	Can view video player	71	view_videoplayer
281	Can add video source	72	add_videosource
282	Can change video source	72	change_videosource
283	Can delete video source	72	delete_videosource
284	Can view video source	72	view_videosource
285	Can add video track	73	add_videotrack
286	Can change video track	73	change_videotrack
287	Can delete video track	73	delete_videotrack
288	Can view video track	73	view_videotrack
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: bootstrap4_alerts_bootstrap4alerts; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_alerts_bootstrap4alerts (cmsplugin_ptr_id, alert_context, alert_dismissable, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_badge_bootstrap4badge; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_badge_bootstrap4badge (cmsplugin_ptr_id, badge_text, badge_context, badge_pills, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_card_bootstrap4card; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_card_bootstrap4card (cmsplugin_ptr_id, card_type, card_context, card_alignment, card_outline, card_text_color, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_card_bootstrap4cardinner; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_card_bootstrap4cardinner (cmsplugin_ptr_id, inner_type, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_carousel_bootstrap4carousel; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_carousel_bootstrap4carousel (cmsplugin_ptr_id, template, carousel_interval, carousel_controls, carousel_indicators, carousel_keyboard, carousel_pause, carousel_ride, carousel_wrap, tag_type, attributes, carousel_aspect_ratio) FROM stdin;
\.


--
-- Data for Name: bootstrap4_carousel_bootstrap4carouselslide; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_carousel_bootstrap4carouselslide (template, name, external_link, anchor, mailto, phone, target, attributes, cmsplugin_ptr_id, carousel_content, tag_type, carousel_image_id, internal_link_id, file_link_id) FROM stdin;
\.


--
-- Data for Name: bootstrap4_collapse_bootstrap4collapse; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_collapse_bootstrap4collapse (cmsplugin_ptr_id, siblings, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_collapse_bootstrap4collapsecontainer; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_collapse_bootstrap4collapsecontainer (cmsplugin_ptr_id, identifier, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_collapse_bootstrap4collapsetrigger; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_collapse_bootstrap4collapsetrigger (cmsplugin_ptr_id, identifier, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_content_bootstrap4blockquote; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_content_bootstrap4blockquote (cmsplugin_ptr_id, quote_content, quote_origin, quote_alignment, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_content_bootstrap4code; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_content_bootstrap4code (cmsplugin_ptr_id, code_content, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_content_bootstrap4figure; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_content_bootstrap4figure (cmsplugin_ptr_id, figure_caption, figure_alignment, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_grid_bootstrap4gridcolumn; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_grid_bootstrap4gridcolumn (cmsplugin_ptr_id, column_type, column_alignment, tag_type, attributes, xs_col, xs_order, xs_ml, xs_mr, sm_col, sm_order, sm_ml, sm_mr, md_col, md_order, md_ml, md_mr, lg_col, lg_order, lg_ml, lg_mr, xl_col, xl_order, xl_ml, xl_mr, lg_offset, md_offset, sm_offset, xl_offset, xs_offset) FROM stdin;
\.


--
-- Data for Name: bootstrap4_grid_bootstrap4gridcontainer; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_grid_bootstrap4gridcontainer (cmsplugin_ptr_id, container_type, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_grid_bootstrap4gridrow; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_grid_bootstrap4gridrow (cmsplugin_ptr_id, vertical_alignment, horizontal_alignment, gutters, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_jumbotron_bootstrap4jumbotron; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_jumbotron_bootstrap4jumbotron (cmsplugin_ptr_id, fluid, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_link_bootstrap4link; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_link_bootstrap4link (template, name, external_link, anchor, mailto, phone, target, attributes, cmsplugin_ptr_id, link_type, link_context, link_size, link_outline, link_block, internal_link_id, icon_left, icon_right, file_link_id) FROM stdin;
\.


--
-- Data for Name: bootstrap4_listgroup_bootstrap4listgroup; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_listgroup_bootstrap4listgroup (cmsplugin_ptr_id, list_group_flush, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_listgroup_bootstrap4listgroupitem; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_listgroup_bootstrap4listgroupitem (cmsplugin_ptr_id, list_context, list_state, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_media_bootstrap4media; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_media_bootstrap4media (cmsplugin_ptr_id, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_media_bootstrap4mediabody; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_media_bootstrap4mediabody (cmsplugin_ptr_id, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_picture_bootstrap4picture; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_picture_bootstrap4picture (template, external_picture, width, height, alignment, caption_text, attributes, link_url, link_target, link_attributes, use_automatic_scaling, use_no_cropping, use_crop, use_upscale, cmsplugin_ptr_id, picture_fluid, picture_rounded, picture_thumbnail, link_page_id, picture_id, thumbnail_options_id, use_responsive_image) FROM stdin;
\.


--
-- Data for Name: bootstrap4_tabs_bootstrap4tab; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_tabs_bootstrap4tab (cmsplugin_ptr_id, template, tab_type, tab_alignment, tab_index, tab_effect, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_tabs_bootstrap4tabitem; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_tabs_bootstrap4tabitem (cmsplugin_ptr_id, tab_title, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: bootstrap4_utilities_bootstrap4spacing; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.bootstrap4_utilities_bootstrap4spacing (cmsplugin_ptr_id, space_property, space_sides, space_size, space_device, tag_type, attributes) FROM stdin;
\.


--
-- Data for Name: cms_aliaspluginmodel; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
\.


--
-- Data for Name: cms_cmsplugin; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
\.


--
-- Data for Name: cms_globalpagepermission; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: cms_globalpagepermission_sites; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
\.


--
-- Data for Name: cms_page; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
\.


--
-- Data for Name: cms_page_placeholders; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
\.


--
-- Data for Name: cms_pagepermission; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
\.


--
-- Data for Name: cms_pageuser; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_pageusergroup; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
\.


--
-- Data for Name: cms_placeholder; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
\.


--
-- Data for Name: cms_placeholderreference; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
\.


--
-- Data for Name: cms_staticplaceholder; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
\.


--
-- Data for Name: cms_title; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
\.


--
-- Data for Name: cms_treenode; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
\.


--
-- Data for Name: cms_urlconfrevision; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_urlconfrevision (id, revision) FROM stdin;
\.


--
-- Data for Name: cms_usersettings; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cms	placeholder
2	cms	page
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	admin	logentry
9	sites	site
10	cms	cmsplugin
11	cms	aliaspluginmodel
12	cms	globalpagepermission
13	cms	pagepermission
14	cms	pageuser
15	cms	pageusergroup
16	cms	placeholderreference
17	cms	staticplaceholder
18	cms	title
19	cms	usersettings
20	cms	urlconfrevision
21	cms	pagetype
22	cms	treenode
23	menus	cachekey
24	djangocms_text_ckeditor	text
25	filer	clipboard
26	filer	clipboarditem
27	filer	file
28	filer	folder
29	filer	folderpermission
30	filer	image
31	filer	thumbnailoption
32	easy_thumbnails	source
33	easy_thumbnails	thumbnail
34	easy_thumbnails	thumbnaildimensions
35	bootstrap4_alerts	bootstrap4alerts
36	bootstrap4_badge	bootstrap4badge
37	bootstrap4_card	bootstrap4card
38	bootstrap4_card	bootstrap4cardinner
39	bootstrap4_carousel	bootstrap4carousel
40	bootstrap4_carousel	bootstrap4carouselslide
41	bootstrap4_collapse	bootstrap4collapse
42	bootstrap4_collapse	bootstrap4collapsecontainer
43	bootstrap4_collapse	bootstrap4collapsetrigger
44	bootstrap4_content	bootstrap4blockquote
45	bootstrap4_content	bootstrap4code
46	bootstrap4_content	bootstrap4figure
47	bootstrap4_grid	bootstrap4gridcolumn
48	bootstrap4_grid	bootstrap4gridcontainer
49	bootstrap4_grid	bootstrap4gridrow
50	bootstrap4_jumbotron	bootstrap4jumbotron
51	bootstrap4_link	bootstrap4link
52	bootstrap4_listgroup	bootstrap4listgroup
53	bootstrap4_listgroup	bootstrap4listgroupitem
54	bootstrap4_media	bootstrap4media
55	bootstrap4_media	bootstrap4mediabody
56	bootstrap4_picture	bootstrap4picture
57	bootstrap4_tabs	bootstrap4tab
58	bootstrap4_tabs	bootstrap4tabitem
59	bootstrap4_utilities	bootstrap4spacing
60	djangocms_file	file
61	djangocms_file	folder
62	djangocms_icon	icon
63	djangocms_link	link
64	djangocms_picture	picture
65	djangocms_style	style
66	djangocms_snippet	snippet
67	djangocms_snippet	snippetptr
68	djangocms_googlemap	googlemap
69	djangocms_googlemap	googlemapmarker
70	djangocms_googlemap	googlemaproute
71	djangocms_video	videoplayer
72	djangocms_video	videosource
73	djangocms_video	videotrack
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-20 13:06:23.698506+08
2	auth	0001_initial	2020-09-20 13:06:23.730344+08
3	admin	0001_initial	2020-09-20 13:06:23.760609+08
4	admin	0002_logentry_remove_auto_add	2020-09-20 13:06:23.772866+08
5	admin	0003_logentry_add_action_flag_choices	2020-09-20 13:06:23.780325+08
6	contenttypes	0002_remove_content_type_name	2020-09-20 13:06:23.798181+08
7	auth	0002_alter_permission_name_max_length	2020-09-20 13:06:23.803292+08
8	auth	0003_alter_user_email_max_length	2020-09-20 13:06:23.811331+08
9	auth	0004_alter_user_username_opts	2020-09-20 13:06:23.821545+08
10	auth	0005_alter_user_last_login_null	2020-09-20 13:06:23.861055+08
11	auth	0006_require_contenttypes_0002	2020-09-20 13:06:23.862707+08
12	auth	0007_alter_validators_add_error_messages	2020-09-20 13:06:23.872407+08
13	auth	0008_alter_user_username_max_length	2020-09-20 13:06:23.884683+08
14	auth	0009_alter_user_last_name_max_length	2020-09-20 13:06:23.89338+08
15	auth	0010_alter_group_name_max_length	2020-09-20 13:06:23.903621+08
16	auth	0011_update_proxy_permissions	2020-09-20 13:06:23.911609+08
17	sites	0001_initial	2020-09-20 13:06:23.917305+08
18	cms	0001_initial	2020-09-20 13:06:23.985421+08
19	cms	0002_auto_20140816_1918	2020-09-20 13:06:24.214891+08
20	cms	0003_auto_20140926_2347	2020-09-20 13:06:24.250683+08
21	cms	0004_auto_20140924_1038	2020-09-20 13:06:24.309792+08
22	cms	0005_auto_20140924_1039	2020-09-20 13:06:24.331556+08
23	cms	0006_auto_20140924_1110	2020-09-20 13:06:24.43822+08
24	cms	0007_auto_20141028_1559	2020-09-20 13:06:24.452226+08
25	cms	0008_auto_20150208_2149	2020-09-20 13:06:24.461272+08
26	cms	0008_auto_20150121_0059	2020-09-20 13:06:24.473355+08
27	cms	0009_merge	2020-09-20 13:06:24.475224+08
28	cms	0010_migrate_use_structure	2020-09-20 13:06:24.51097+08
29	cms	0011_auto_20150419_1006	2020-09-20 13:06:24.522327+08
30	cms	0012_auto_20150607_2207	2020-09-20 13:06:24.569676+08
31	cms	0013_urlconfrevision	2020-09-20 13:06:24.574473+08
32	cms	0014_auto_20160404_1908	2020-09-20 13:06:24.59757+08
33	cms	0015_auto_20160421_0000	2020-09-20 13:06:24.648992+08
34	cms	0016_auto_20160608_1535	2020-09-20 13:06:24.69015+08
35	bootstrap4_alerts	0001_initial	2020-09-20 13:06:24.711626+08
36	bootstrap4_badge	0001_initial	2020-09-20 13:06:24.735418+08
37	bootstrap4_card	0001_initial	2020-09-20 13:06:24.780492+08
38	filer	0001_initial	2020-09-20 13:06:25.00917+08
39	filer	0002_auto_20150606_2003	2020-09-20 13:06:25.055111+08
40	filer	0003_thumbnailoption	2020-09-20 13:06:25.059808+08
41	filer	0004_auto_20160328_1434	2020-09-20 13:06:25.071839+08
42	filer	0005_auto_20160623_1425	2020-09-20 13:06:25.175048+08
43	filer	0006_auto_20160623_1627	2020-09-20 13:06:25.207299+08
44	filer	0007_auto_20161016_1055	2020-09-20 13:06:25.221406+08
45	filer	0008_auto_20171117_1313	2020-09-20 13:06:25.233887+08
46	filer	0009_auto_20171220_1635	2020-09-20 13:06:25.253663+08
47	filer	0010_auto_20180414_2058	2020-09-20 13:06:25.331169+08
48	filer	0011_auto_20190418_0137	2020-09-20 13:06:25.373004+08
49	bootstrap4_carousel	0001_initial	2020-09-20 13:06:25.43559+08
50	bootstrap4_carousel	0002_bootstrap4carousel_carousel_aspect_ratio	2020-09-20 13:06:25.451714+08
51	bootstrap4_carousel	0003_auto_20180610_1102	2020-09-20 13:06:25.480812+08
52	bootstrap4_carousel	0004_auto_20190703_0831	2020-09-20 13:06:25.534132+08
53	bootstrap4_collapse	0001_initial	2020-09-20 13:06:25.62763+08
54	bootstrap4_content	0001_initial	2020-09-20 13:06:25.699911+08
55	bootstrap4_content	0002_added_figure	2020-09-20 13:06:25.735969+08
56	bootstrap4_grid	0001_initial	2020-09-20 13:06:25.844702+08
57	bootstrap4_grid	0002_auto_20180709_0808	2020-09-20 13:06:25.993549+08
58	bootstrap4_grid	0003_migrate_column_size	2020-09-20 13:06:26.033319+08
59	bootstrap4_grid	0004_remove_bootstrap4gridcolumn_column_size	2020-09-20 13:06:26.052787+08
60	bootstrap4_jumbotron	0001_initial	2020-09-20 13:06:26.095052+08
61	bootstrap4_link	0001_initial	2020-09-20 13:06:26.143673+08
62	bootstrap4_link	0002_add_icons	2020-09-20 13:06:26.195856+08
63	bootstrap4_link	0003_icon_updates	2020-09-20 13:06:26.246934+08
64	bootstrap4_link	0004_auto_20190703_0831	2020-09-20 13:06:26.318014+08
65	bootstrap4_listgroup	0001_initial	2020-09-20 13:06:26.400039+08
66	bootstrap4_media	0001_initial	2020-09-20 13:06:26.492929+08
67	djangocms_picture	0001_initial	2020-09-20 13:06:26.542388+08
68	djangocms_picture	0002_auto_20151018_1927	2020-09-20 13:06:26.666236+08
69	djangocms_picture	0003_migrate_to_filer	2020-09-20 13:06:26.879874+08
70	djangocms_picture	0004_adapt_fields	2020-09-20 13:06:27.603212+08
71	djangocms_picture	0005_reset_null_values	2020-09-20 13:06:27.654372+08
72	djangocms_picture	0006_remove_null_values	2020-09-20 13:06:27.732352+08
73	djangocms_picture	0007_fix_alignment	2020-09-20 13:06:27.829411+08
74	djangocms_picture	0008_picture_use_responsive_image	2020-09-20 13:06:27.862205+08
75	bootstrap4_picture	0001_initial	2020-09-20 13:06:27.908066+08
76	bootstrap4_picture	0002_bootstrap4picture_use_responsive_image	2020-09-20 13:06:27.948028+08
77	bootstrap4_picture	0003_auto_20181212_1055	2020-09-20 13:06:28.08243+08
78	bootstrap4_picture	0004_auto_20190703_0831	2020-09-20 13:06:28.184349+08
79	bootstrap4_tabs	0001_initial	2020-09-20 13:06:28.266421+08
80	bootstrap4_tabs	0002_auto_20180610_1106	2020-09-20 13:06:28.366577+08
81	bootstrap4_utilities	0001_initial	2020-09-20 13:06:28.409632+08
82	cms	0017_pagetype	2020-09-20 13:06:28.474449+08
83	cms	0018_pagenode	2020-09-20 13:06:28.627108+08
84	cms	0019_set_pagenode	2020-09-20 13:06:28.72671+08
85	cms	0020_old_tree_cleanup	2020-09-20 13:06:28.979857+08
86	cms	0021_auto_20180507_1432	2020-09-20 13:06:28.994147+08
87	cms	0022_auto_20180620_1551	2020-09-20 13:06:29.020948+08
88	djangocms_file	0001_initial	2020-09-20 13:06:29.048675+08
89	djangocms_file	0002_auto_20151202_1551	2020-09-20 13:06:29.087733+08
90	djangocms_file	0003_remove_related_name_for_cmsplugin_ptr	2020-09-20 13:06:29.122591+08
91	djangocms_file	0004_set_related_name_for_cmsplugin_ptr	2020-09-20 13:06:29.155039+08
92	djangocms_file	0005_auto_20160119_1534	2020-09-20 13:06:29.167523+08
93	djangocms_file	0006_migrate_to_filer	2020-09-20 13:06:29.257704+08
94	djangocms_file	0007_adapted_fields	2020-09-20 13:06:29.504294+08
95	djangocms_file	0008_add_folder	2020-09-20 13:06:29.53367+08
96	djangocms_file	0009_fixed_null_fields	2020-09-20 13:06:29.583068+08
97	djangocms_file	0010_removed_null_fields	2020-09-20 13:06:29.60331+08
98	djangocms_file	0011_auto_20181211_0357	2020-09-20 13:06:29.638341+08
99	djangocms_googlemap	0001_initial	2020-09-20 13:06:29.671276+08
100	djangocms_googlemap	0002_auto_20160622_1031	2020-09-20 13:06:29.74693+08
101	djangocms_googlemap	0003_auto_20160825_1829	2020-09-20 13:06:29.763125+08
102	djangocms_googlemap	0004_adapted_fields	2020-09-20 13:06:30.267315+08
103	djangocms_googlemap	0005_create_nested_plugins	2020-09-20 13:06:30.318379+08
104	djangocms_googlemap	0006_remove_fields	2020-09-20 13:06:30.426788+08
105	djangocms_googlemap	0007_reset_null_values	2020-09-20 13:06:30.4749+08
106	djangocms_googlemap	0008_removed_null_fields	2020-09-20 13:06:30.49296+08
107	djangocms_googlemap	0009_googlemapmarker_icon	2020-09-20 13:06:30.528144+08
108	djangocms_googlemap	0010_auto_20190718_1021	2020-09-20 13:06:30.579923+08
109	djangocms_icon	0001_initial	2020-09-20 13:06:30.681504+08
110	djangocms_icon	0002_auto_20190218_2017	2020-09-20 13:06:30.736346+08
111	djangocms_link	0001_initial	2020-09-20 13:06:30.773251+08
112	djangocms_link	0002_auto_20140929_1705	2020-09-20 13:06:30.800627+08
113	djangocms_link	0003_auto_20150212_1310	2020-09-20 13:06:30.822262+08
114	djangocms_link	0004_auto_20150708_1133	2020-09-20 13:06:30.864313+08
115	djangocms_link	0005_auto_20151003_1710	2020-09-20 13:06:30.885936+08
116	djangocms_link	0006_remove_related_name_for_cmsplugin_ptr	2020-09-20 13:06:30.924414+08
117	djangocms_link	0007_set_related_name_for_cmsplugin_ptr	2020-09-20 13:06:30.962723+08
118	djangocms_link	0008_link_attributes	2020-09-20 13:06:30.986147+08
119	djangocms_link	0009_auto_20160705_1344	2020-09-20 13:06:31.009862+08
120	djangocms_link	0010_adapted_fields	2020-09-20 13:06:31.29089+08
121	djangocms_link	0011_fixed_null_values	2020-09-20 13:06:31.348225+08
122	djangocms_link	0012_removed_null	2020-09-20 13:06:31.421379+08
123	djangocms_link	0013_fix_hostname	2020-09-20 13:06:31.442417+08
124	djangocms_link	0014_link_file_link	2020-09-20 13:06:31.478733+08
125	djangocms_link	0015_auto_20190621_0407	2020-09-20 13:06:31.509442+08
126	djangocms_picture	0009_auto_20181212_1003	2020-09-20 13:06:31.615924+08
127	djangocms_picture	0010_auto_20190627_0432	2020-09-20 13:06:31.701123+08
128	djangocms_picture	0011_auto_20190314_1536	2020-09-20 13:06:31.846138+08
129	djangocms_snippet	0001_initial	2020-09-20 13:06:31.891098+08
130	djangocms_snippet	0002_snippet_slug	2020-09-20 13:06:31.901493+08
131	djangocms_snippet	0003_auto_data_fill_slug	2020-09-20 13:06:31.957848+08
132	djangocms_snippet	0004_auto_alter_slug_unique	2020-09-20 13:06:31.968528+08
133	djangocms_snippet	0005_set_related_name_for_cmsplugin_ptr	2020-09-20 13:06:32.013846+08
134	djangocms_snippet	0006_auto_20160831_0729	2020-09-20 13:06:32.047011+08
135	djangocms_snippet	0007_auto_alter_template_helptext	2020-09-20 13:06:32.055743+08
136	djangocms_snippet	0008_auto_change_name	2020-09-20 13:06:32.075142+08
137	djangocms_style	0001_initial	2020-09-20 13:06:32.11868+08
138	djangocms_style	0002_set_related_name_for_cmsplugin_ptr	2020-09-20 13:06:32.164492+08
139	djangocms_style	0003_adapted_fields	2020-09-20 13:06:32.419312+08
140	djangocms_style	0004_use_positive_small_integer_field	2020-09-20 13:06:32.659069+08
141	djangocms_style	0005_reset_null_values	2020-09-20 13:06:32.726048+08
142	djangocms_style	0006_removed_null_fields	2020-09-20 13:06:32.749748+08
143	djangocms_style	0007_style_template	2020-09-20 13:06:32.772435+08
144	djangocms_text_ckeditor	0001_initial	2020-09-20 13:06:32.816442+08
145	djangocms_text_ckeditor	0002_remove_related_name_for_cmsplugin_ptr	2020-09-20 13:06:32.862843+08
146	djangocms_text_ckeditor	0003_set_related_name_for_cmsplugin_ptr	2020-09-20 13:06:32.912233+08
147	djangocms_text_ckeditor	0004_auto_20160706_1339	2020-09-20 13:06:32.977767+08
148	djangocms_video	0001_initial	2020-09-20 13:06:33.024937+08
149	djangocms_video	0002_set_related_name_for_cmsplugin_ptr	2020-09-20 13:06:33.07585+08
150	djangocms_video	0003_field_adaptions	2020-09-20 13:06:33.443008+08
151	djangocms_video	0004_move_to_attributes	2020-09-20 13:06:34.041227+08
152	djangocms_video	0005_migrate_to_filer	2020-09-20 13:06:34.116305+08
153	djangocms_video	0006_field_adaptions	2020-09-20 13:06:34.293867+08
154	djangocms_video	0007_create_nested_plugin	2020-09-20 13:06:34.391384+08
155	djangocms_video	0008_reset_null_values	2020-09-20 13:06:34.453723+08
156	djangocms_video	0009_removed_null_values	2020-09-20 13:06:34.580211+08
157	djangocms_video	0010_videoplayer_parameters	2020-09-20 13:06:34.622234+08
158	easy_thumbnails	0001_initial	2020-09-20 13:06:34.650892+08
159	easy_thumbnails	0002_thumbnaildimensions	2020-09-20 13:06:34.673069+08
160	filer	0012_file_mime_type	2020-09-20 13:06:34.765355+08
161	menus	0001_initial	2020-09-20 13:06:34.773311+08
162	sessions	0001_initial	2020-09-20 13:06:34.781641+08
163	sites	0002_alter_domain_unique	2020-09-20 13:06:34.794167+08
164	cms	0018_create_pagenode	2020-09-20 13:06:34.798557+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: djangocms_file_file; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
\.


--
-- Data for Name: djangocms_file_folder; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemap; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemapmarker; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
\.


--
-- Data for Name: djangocms_googlemap_googlemaproute; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
\.


--
-- Data for Name: djangocms_icon_icon; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_icon_icon (cmsplugin_ptr_id, icon, template, label, attributes) FROM stdin;
\.


--
-- Data for Name: djangocms_link_link; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template, file_link_id) FROM stdin;
\.


--
-- Data for Name: djangocms_picture_picture; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template, use_responsive_image) FROM stdin;
\.


--
-- Data for Name: djangocms_snippet_snippet; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
\.


--
-- Data for Name: djangocms_snippet_snippetptr; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
\.


--
-- Data for Name: djangocms_style_style; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_style_style (cmsplugin_ptr_id, class_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_classes, attributes, id_name, label, template) FROM stdin;
\.


--
-- Data for Name: djangocms_text_ckeditor_text; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videoplayer; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template, parameters) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videosource; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
\.


--
-- Data for Name: djangocms_video_videotrack; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
\.


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Data for Name: filer_clipboard; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_clipboard (id, user_id) FROM stdin;
\.


--
-- Data for Name: filer_clipboarditem; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
\.


--
-- Data for Name: filer_file; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id, mime_type) FROM stdin;
\.


--
-- Data for Name: filer_folder; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
\.


--
-- Data for Name: filer_folderpermission; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
\.


--
-- Data for Name: filer_image; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
\.


--
-- Data for Name: filer_thumbnailoption; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
\.


--
-- Data for Name: menus_cachekey; Type: TABLE DATA; Schema: public; Owner: hipikat
--

COPY public.menus_cachekey (id, language, site, key) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 288, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cms_cmsplugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 1, false);


--
-- Name: cms_globalpagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);


--
-- Name: cms_globalpagepermission_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);


--
-- Name: cms_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_page_id_seq', 1, false);


--
-- Name: cms_page_placeholders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 1, false);


--
-- Name: cms_pagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);


--
-- Name: cms_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 1, false);


--
-- Name: cms_staticplaceholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, false);


--
-- Name: cms_title_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_title_id_seq', 1, false);


--
-- Name: cms_treenode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_treenode_id_seq', 1, false);


--
-- Name: cms_urlconfrevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);


--
-- Name: cms_usersettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 73, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 164, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: djangocms_snippet_snippet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 1, false);


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Name: filer_clipboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, false);


--
-- Name: filer_clipboarditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);


--
-- Name: filer_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.filer_file_id_seq', 1, false);


--
-- Name: filer_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);


--
-- Name: filer_folderpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);


--
-- Name: filer_thumbnailoption_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);


--
-- Name: menus_cachekey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hipikat
--

SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: bootstrap4_alerts_bootstrap4alerts bootstrap4_alerts_bootstrap4alerts_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_alerts_bootstrap4alerts
    ADD CONSTRAINT bootstrap4_alerts_bootstrap4alerts_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_badge_bootstrap4badge bootstrap4_badge_bootstrap4badge_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_badge_bootstrap4badge
    ADD CONSTRAINT bootstrap4_badge_bootstrap4badge_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_card_bootstrap4card bootstrap4_card_bootstrap4card_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4card
    ADD CONSTRAINT bootstrap4_card_bootstrap4card_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_card_bootstrap4cardinner bootstrap4_card_bootstrap4cardinner_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4cardinner
    ADD CONSTRAINT bootstrap4_card_bootstrap4cardinner_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_carousel_bootstrap4carousel bootstrap4_carousel_bootstrap4carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carousel
    ADD CONSTRAINT bootstrap4_carousel_bootstrap4carousel_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel_bootstrap4carouselslide_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel_bootstrap4carouselslide_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_collapse_bootstrap4collapse bootstrap4_collapse_bootstrap4collapse_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapse
    ADD CONSTRAINT bootstrap4_collapse_bootstrap4collapse_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_collapse_bootstrap4collapsecontainer bootstrap4_collapse_bootstrap4collapsecontainer_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsecontainer
    ADD CONSTRAINT bootstrap4_collapse_bootstrap4collapsecontainer_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_collapse_bootstrap4collapsetrigger bootstrap4_collapse_bootstrap4collapsetrigger_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsetrigger
    ADD CONSTRAINT bootstrap4_collapse_bootstrap4collapsetrigger_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_content_bootstrap4blockquote bootstrap4_content_bootstrap4blockquote_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4blockquote
    ADD CONSTRAINT bootstrap4_content_bootstrap4blockquote_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_content_bootstrap4code bootstrap4_content_bootstrap4code_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4code
    ADD CONSTRAINT bootstrap4_content_bootstrap4code_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_content_bootstrap4figure bootstrap4_content_bootstrap4figure_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4figure
    ADD CONSTRAINT bootstrap4_content_bootstrap4figure_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_grid_bootstrap4gridcolumn bootstrap4_grid_bootstrap4gridcolumn_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcolumn
    ADD CONSTRAINT bootstrap4_grid_bootstrap4gridcolumn_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_grid_bootstrap4gridcontainer bootstrap4_grid_bootstrap4gridcontainer_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcontainer
    ADD CONSTRAINT bootstrap4_grid_bootstrap4gridcontainer_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_grid_bootstrap4gridrow bootstrap4_grid_bootstrap4gridrow_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridrow
    ADD CONSTRAINT bootstrap4_grid_bootstrap4gridrow_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_jumbotron_bootstrap4jumbotron bootstrap4_jumbotron_bootstrap4jumbotron_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_jumbotron_bootstrap4jumbotron
    ADD CONSTRAINT bootstrap4_jumbotron_bootstrap4jumbotron_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_bootstrap4link_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_bootstrap4link_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_listgroup_bootstrap4listgroup bootstrap4_listgroup_bootstrap4listgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroup
    ADD CONSTRAINT bootstrap4_listgroup_bootstrap4listgroup_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_listgroup_bootstrap4listgroupitem bootstrap4_listgroup_bootstrap4listgroupitem_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroupitem
    ADD CONSTRAINT bootstrap4_listgroup_bootstrap4listgroupitem_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_media_bootstrap4media bootstrap4_media_bootstrap4media_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4media
    ADD CONSTRAINT bootstrap4_media_bootstrap4media_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_media_bootstrap4mediabody bootstrap4_media_bootstrap4mediabody_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4mediabody
    ADD CONSTRAINT bootstrap4_media_bootstrap4mediabody_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_bootstrap4picture_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_bootstrap4picture_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_tabs_bootstrap4tab bootstrap4_tabs_bootstrap4tab_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tab
    ADD CONSTRAINT bootstrap4_tabs_bootstrap4tab_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_tabs_bootstrap4tabitem bootstrap4_tabs_bootstrap4tabitem_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tabitem
    ADD CONSTRAINT bootstrap4_tabs_bootstrap4tabitem_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: bootstrap4_utilities_bootstrap4spacing bootstrap4_utilities_bootstrap4spacing_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_utilities_bootstrap4spacing
    ADD CONSTRAINT bootstrap4_utilities_bootstrap4spacing_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);


--
-- Name: cms_cmsplugin cms_cmsplugin_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);


--
-- Name: cms_globalpagepermission cms_globalpagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);


--
-- Name: cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);


--
-- Name: cms_page cms_page_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);


--
-- Name: cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);


--
-- Name: cms_page_placeholders cms_page_placeholders_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);


--
-- Name: cms_page cms_page_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_pagepermission cms_pagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);


--
-- Name: cms_pageuser cms_pageuser_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: cms_pageusergroup cms_pageusergroup_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);


--
-- Name: cms_placeholder cms_placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);


--
-- Name: cms_placeholderreference cms_placeholderreference_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);


--
-- Name: cms_staticplaceholder cms_staticplaceholder_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);


--
-- Name: cms_title cms_title_language_page_id_61aaf084_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);


--
-- Name: cms_title cms_title_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);


--
-- Name: cms_title cms_title_publisher_public_id_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);


--
-- Name: cms_treenode cms_treenode_path_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);


--
-- Name: cms_treenode cms_treenode_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);


--
-- Name: cms_urlconfrevision cms_urlconfrevision_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);


--
-- Name: cms_usersettings cms_usersettings_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);


--
-- Name: cms_usersettings cms_usersettings_user_id_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djangocms_file_file djangocms_file_file_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_file_folder djangocms_file_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_icon_icon djangocms_icon_icon_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_icon_icon
    ADD CONSTRAINT djangocms_icon_icon_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_link_link djangocms_link_link_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_picture_picture djangocms_picture_picture_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_name_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);


--
-- Name: djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_style_style djangocms_style_style_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_style_style
    ADD CONSTRAINT djangocms_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videoplayer djangocms_video_video_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videosource djangocms_video_videosource_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: djangocms_video_videotrack djangocms_video_videotrack_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: filer_clipboard filer_clipboard_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);


--
-- Name: filer_clipboarditem filer_clipboarditem_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);


--
-- Name: filer_file filer_file_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);


--
-- Name: filer_folder filer_folder_parent_id_name_bc773258_uniq; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);


--
-- Name: filer_folder filer_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);


--
-- Name: filer_folderpermission filer_folderpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);


--
-- Name: filer_image filer_image_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);


--
-- Name: filer_thumbnailoption filer_thumbnailoption_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);


--
-- Name: menus_cachekey menus_cachekey_pkey; Type: CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: bootstrap4_carousel_bootst_carousel_image_id_c7547e1f; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_carousel_bootst_carousel_image_id_c7547e1f ON public.bootstrap4_carousel_bootstrap4carouselslide USING btree (carousel_image_id);


--
-- Name: bootstrap4_carousel_bootst_file_link_id_926e466f; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_carousel_bootst_file_link_id_926e466f ON public.bootstrap4_carousel_bootstrap4carouselslide USING btree (file_link_id);


--
-- Name: bootstrap4_carousel_bootst_internal_link_id_9040d8b6; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_carousel_bootst_internal_link_id_9040d8b6 ON public.bootstrap4_carousel_bootstrap4carouselslide USING btree (internal_link_id);


--
-- Name: bootstrap4_collapse_boot_identifier_70258b88_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_collapse_boot_identifier_70258b88_like ON public.bootstrap4_collapse_bootstrap4collapsetrigger USING btree (identifier varchar_pattern_ops);


--
-- Name: bootstrap4_collapse_boot_identifier_ed2446e8_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_collapse_boot_identifier_ed2446e8_like ON public.bootstrap4_collapse_bootstrap4collapsecontainer USING btree (identifier varchar_pattern_ops);


--
-- Name: bootstrap4_collapse_bootst_identifier_70258b88; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_collapse_bootst_identifier_70258b88 ON public.bootstrap4_collapse_bootstrap4collapsetrigger USING btree (identifier);


--
-- Name: bootstrap4_collapse_bootst_identifier_ed2446e8; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_collapse_bootst_identifier_ed2446e8 ON public.bootstrap4_collapse_bootstrap4collapsecontainer USING btree (identifier);


--
-- Name: bootstrap4_link_bootstrap4link_file_link_id_73e3dbff; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_link_bootstrap4link_file_link_id_73e3dbff ON public.bootstrap4_link_bootstrap4link USING btree (file_link_id);


--
-- Name: bootstrap4_link_bootstrap4link_internal_link_id_bc4ec61e; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_link_bootstrap4link_internal_link_id_bc4ec61e ON public.bootstrap4_link_bootstrap4link USING btree (internal_link_id);


--
-- Name: bootstrap4_picture_bootstr_thumbnail_options_id_15520a42; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_picture_bootstr_thumbnail_options_id_15520a42 ON public.bootstrap4_picture_bootstrap4picture USING btree (thumbnail_options_id);


--
-- Name: bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21 ON public.bootstrap4_picture_bootstrap4picture USING btree (link_page_id);


--
-- Name: bootstrap4_picture_bootstrap4picture_picture_id_f26d968d; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX bootstrap4_picture_bootstrap4picture_picture_id_f26d968d ON public.bootstrap4_picture_bootstrap4picture USING btree (picture_id);


--
-- Name: cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);


--
-- Name: cms_aliaspluginmodel_plugin_id_9867676e; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);


--
-- Name: cms_cmsplugin_language_bbea8a48; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);


--
-- Name: cms_cmsplugin_language_bbea8a48_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);


--
-- Name: cms_cmsplugin_parent_id_fd3bd9dd; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);


--
-- Name: cms_cmsplugin_path_4917bb44_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);


--
-- Name: cms_cmsplugin_placeholder_id_0bfa3b26; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);


--
-- Name: cms_cmsplugin_plugin_type_94e96ebf; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);


--
-- Name: cms_cmsplugin_plugin_type_94e96ebf_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);


--
-- Name: cms_globalpagepermission_group_id_991b4733; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);


--
-- Name: cms_globalpagepermission_sites_globalpagepermission_id_46bd2681; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);


--
-- Name: cms_globalpagepermission_sites_site_id_00460b53; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);


--
-- Name: cms_globalpagepermission_user_id_a227cee1; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);


--
-- Name: cms_page_application_urls_9ef47497; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);


--
-- Name: cms_page_application_urls_9ef47497_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);


--
-- Name: cms_page_in_navigation_01c24279; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);


--
-- Name: cms_page_is_home_edadca07; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);


--
-- Name: cms_page_limit_visibility_in_menu_30db6aa6; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);


--
-- Name: cms_page_navigation_extenders_c24af8dd; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);


--
-- Name: cms_page_navigation_extenders_c24af8dd_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);


--
-- Name: cms_page_node_id_c87b85a9; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);


--
-- Name: cms_page_placeholders_page_id_f2ce8dec; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);


--
-- Name: cms_page_placeholders_placeholder_id_6b120886; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);


--
-- Name: cms_page_publication_date_684fabf7; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);


--
-- Name: cms_page_publication_end_date_12a0c46a; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);


--
-- Name: cms_page_publisher_is_draft_141cba60; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);


--
-- Name: cms_page_reverse_id_ffc9ede2; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);


--
-- Name: cms_page_reverse_id_ffc9ede2_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);


--
-- Name: cms_page_soft_root_51efccbe; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);


--
-- Name: cms_pagepermission_group_id_af5af193; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);


--
-- Name: cms_pagepermission_page_id_0ae9a163; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);


--
-- Name: cms_pagepermission_user_id_0c7d2b3c; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);


--
-- Name: cms_pageuser_created_by_id_8e9fbf83; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);


--
-- Name: cms_pageusergroup_created_by_id_7d57fa39; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);


--
-- Name: cms_placeholder_slot_0bc04d21; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);


--
-- Name: cms_placeholder_slot_0bc04d21_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);


--
-- Name: cms_placeholderreference_placeholder_ref_id_244759b1; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);


--
-- Name: cms_staticplaceholder_draft_id_5aee407b; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);


--
-- Name: cms_staticplaceholder_public_id_876aaa66; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);


--
-- Name: cms_staticplaceholder_site_id_dc6a85b6; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);


--
-- Name: cms_title_has_url_overwrite_ecf27bb9; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);


--
-- Name: cms_title_language_50a0dfa1; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);


--
-- Name: cms_title_language_50a0dfa1_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);


--
-- Name: cms_title_page_id_5fade2a3; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);


--
-- Name: cms_title_path_c484314c; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);


--
-- Name: cms_title_path_c484314c_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);


--
-- Name: cms_title_publisher_is_draft_95874c88; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);


--
-- Name: cms_title_publisher_state_9a952b0f; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);


--
-- Name: cms_title_slug_4947d146; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);


--
-- Name: cms_title_slug_4947d146_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);


--
-- Name: cms_treenode_parent_id_59bb02c4; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);


--
-- Name: cms_treenode_path_6eb22885_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);


--
-- Name: cms_treenode_site_id_d3f46985; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);


--
-- Name: cms_usersettings_clipboard_id_3ae17c19; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: djangocms_file_file_file_src_id_74ac14a5; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);


--
-- Name: djangocms_file_folder_folder_src_id_9558406a; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);


--
-- Name: djangocms_googlemap_googlemapmarker_icon_id_3b103213; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);


--
-- Name: djangocms_link_link_file_link_id_c7869e4c; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_link_link_file_link_id_c7869e4c ON public.djangocms_link_link USING btree (file_link_id);


--
-- Name: djangocms_link_link_page_link_id_adba1bc7; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);


--
-- Name: djangocms_picture_picture_page_link_id_d5c782e0; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);


--
-- Name: djangocms_picture_picture_picture_id_f7d6711b; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);


--
-- Name: djangocms_picture_picture_thumbnail_options_id_59cf80d1; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);


--
-- Name: djangocms_snippet_snippet_name_260f397b_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);


--
-- Name: djangocms_snippet_snippet_slug_bd43cd96_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);


--
-- Name: djangocms_snippet_snippetptr_snippet_id_56b99614; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);


--
-- Name: djangocms_video_videoplayer_poster_id_07790e24; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);


--
-- Name: djangocms_video_videosource_source_file_id_16f11167; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);


--
-- Name: djangocms_video_videotrack_src_id_e5a015d8; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);


--
-- Name: easy_thumbnails_source_name_5fe0edc6; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_name_5fe0edc6_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_storage_hash_946cbcc9_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_name_b5882c31_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_source_id_5b57bc77; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_f1435f49_like; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: filer_clipboard_user_id_b52ff0bc; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);


--
-- Name: filer_clipboarditem_clipboard_id_7a76518b; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);


--
-- Name: filer_clipboarditem_file_id_06196f80; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);


--
-- Name: filer_file_folder_id_af803bbb; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);


--
-- Name: filer_file_owner_id_b9e32671; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);


--
-- Name: filer_file_polymorphic_ctype_id_f44903c1; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);


--
-- Name: filer_folder_owner_id_be530fb4; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);


--
-- Name: filer_folder_parent_id_308aecda; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);


--
-- Name: filer_folder_tree_id_b016223c; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);


--
-- Name: filer_folder_tree_id_lft_088ce52b_idx; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folder_tree_id_lft_088ce52b_idx ON public.filer_folder USING btree (tree_id, lft);


--
-- Name: filer_folderpermission_folder_id_5d02f1da; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);


--
-- Name: filer_folderpermission_group_id_8901bafa; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);


--
-- Name: filer_folderpermission_user_id_7673d4b6; Type: INDEX; Schema: public; Owner: hipikat
--

CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_alerts_bootstrap4alerts bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_alerts_bootstrap4alerts
    ADD CONSTRAINT bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_badge_bootstrap4badge bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_badge_bootstrap4badge
    ADD CONSTRAINT bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_card_bootstrap4cardinner bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4cardinner
    ADD CONSTRAINT bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_card_bootstrap4card bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_card_bootstrap4card
    ADD CONSTRAINT bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima FOREIGN KEY (carousel_image_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carousel bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carousel
    ADD CONSTRAINT bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__file_link_id_926e466f_fk_filer_fil FOREIGN KEY (file_link_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_carousel_bootstrap4carouselslide bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_carousel_bootstrap4carouselslide
    ADD CONSTRAINT bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_ FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_collapse_bootstrap4collapsecontainer bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsecontainer
    ADD CONSTRAINT bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_collapse_bootstrap4collapse bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapse
    ADD CONSTRAINT bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_collapse_bootstrap4collapsetrigger bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_collapse_bootstrap4collapsetrigger
    ADD CONSTRAINT bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_content_bootstrap4figure bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4figure
    ADD CONSTRAINT bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_content_bootstrap4blockquote bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4blockquote
    ADD CONSTRAINT bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_content_bootstrap4code bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_content_bootstrap4code
    ADD CONSTRAINT bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_grid_bootstrap4gridrow bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridrow
    ADD CONSTRAINT bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_grid_bootstrap4gridcolumn bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcolumn
    ADD CONSTRAINT bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_grid_bootstrap4gridcontainer bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_grid_bootstrap4gridcontainer
    ADD CONSTRAINT bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_jumbotron_bootstrap4jumbotron bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_jumbotron_bootstrap4jumbotron
    ADD CONSTRAINT bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_boot_file_link_id_73e3dbff_fk_filer_fil FOREIGN KEY (file_link_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_link_bootstrap4link bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_link_bootstrap4link
    ADD CONSTRAINT bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_ FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_listgroup_bootstrap4listgroup bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroup
    ADD CONSTRAINT bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_listgroup_bootstrap4listgroupitem bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_listgroup_bootstrap4listgroupitem
    ADD CONSTRAINT bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_media_bootstrap4mediabody bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4mediabody
    ADD CONSTRAINT bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_media_bootstrap4media bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_media_bootstrap4media
    ADD CONSTRAINT bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_ FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_picture_bootstrap4picture bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_picture_bootstrap4picture
    ADD CONSTRAINT bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_tabs_bootstrap4tabitem bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tabitem
    ADD CONSTRAINT bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_tabs_bootstrap4tab bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_tabs_bootstrap4tab
    ADD CONSTRAINT bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bootstrap4_utilities_bootstrap4spacing bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.bootstrap4_utilities_bootstrap4spacing
    ADD CONSTRAINT bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_title cms_title_page_id_5fade2a3_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_icon_icon djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_icon_icon
    ADD CONSTRAINT djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id FOREIGN KEY (file_link_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_snippet_snippetptr djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_style_style djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_style_style
    ADD CONSTRAINT djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_owner_id_b9e32671_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id; Type: FK CONSTRAINT; Schema: public; Owner: hipikat
--

ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

