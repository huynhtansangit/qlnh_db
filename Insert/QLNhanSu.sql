/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     9/28/2019 5:00:07 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANGCHAMCONG') and o.name = 'FK_BANGCHAM_NV_BCC_NHANVIEN')
alter table BANGCHAMCONG
   drop constraint FK_BANGCHAM_NV_BCC_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANGLUONG') and o.name = 'FK_BANGLUON_BL_TSBD_THONGSOB')
alter table BANGLUONG
   drop constraint FK_BANGLUON_BL_TSBD_THONGSOB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BANGLUONG') and o.name = 'FK_BANGLUON_BL_TTNCN_THUETNCN')
alter table BANGLUONG
   drop constraint FK_BANGLUON_BL_TTNCN_THUETNCN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BIENDONGGIACANH') and o.name = 'FK_BIENDONG_LL_BDGC_LYLICH')
alter table BIENDONGGIACANH
   drop constraint FK_BIENDONG_LL_BDGC_LYLICH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOPDONGLD') and o.name = 'FK_HOPDONGL_HD_LHD_LOAIHD')
alter table HOPDONGLD
   drop constraint FK_HOPDONGL_HD_LHD_LOAIHD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOSOLUONG') and o.name = 'FK_HOSOLUON_HSL_HDLD_HOPDONGL')
alter table HOSOLUONG
   drop constraint FK_HOSOLUON_HSL_HDLD_HOPDONGL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HOSOLUONG') and o.name = 'FK_HOSOLUON_NV_HSL_NHANVIEN')
alter table HOSOLUONG
   drop constraint FK_HOSOLUON_NV_HSL_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOAIQDKTKL') and o.name = 'FK_LOAIQDKT_LQD_QDKTK_QDKHENTH')
alter table LOAIQDKTKL
   drop constraint FK_LOAIQDKT_LQD_QDKTK_QDKHENTH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LYLICH') and o.name = 'FK_LYLICH_DT_LL_DANTOC')
alter table LYLICH
   drop constraint FK_LYLICH_DT_LL_DANTOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LYLICH') and o.name = 'FK_LYLICH_NV_LL2_NHANVIEN')
alter table LYLICH
   drop constraint FK_LYLICH_NV_LL2_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LYLICH') and o.name = 'FK_LYLICH_QT_LL_QUOCTICH')
alter table LYLICH
   drop constraint FK_LYLICH_QT_LL_QUOCTICH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LYLICH') and o.name = 'FK_LYLICH_TG_LL_TONGIAO')
alter table LYLICH
   drop constraint FK_LYLICH_TG_LL_TONGIAO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LYLICH') and o.name = 'FK_LYLICH_TH_LL_TINHOC')
alter table LYLICH
   drop constraint FK_LYLICH_TH_LL_TINHOC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_GTU_NV_GIAYTAMU')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_GTU_NV_GIAYTAMU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_NV_BL_BANGLUON')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_NV_BL_BANGLUON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_NV_CV_CHUCVU')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_NV_CV_CHUCVU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_NV_LL_LYLICH')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_NV_LL_LYLICH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NHANVIEN') and o.name = 'FK_NHANVIEN_NV_PB_PHONGBAN')
alter table NHANVIEN
   drop constraint FK_NHANVIEN_NV_PB_PHONGBAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NN_LL') and o.name = 'FK_NN_LL_NN_LL_LYLICH')
alter table NN_LL
   drop constraint FK_NN_LL_NN_LL_LYLICH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NN_LL') and o.name = 'FK_NN_LL_NN_LL2_NGOAINGU')
alter table NN_LL
   drop constraint FK_NN_LL_NN_LL2_NGOAINGU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('QDDIEUDONGBONHIEM') and o.name = 'FK_QDDIEUDO_CV_QDDDBN_CHUCVU')
alter table QDDIEUDONGBONHIEM
   drop constraint FK_QDDIEUDO_CV_QDDDBN_CHUCVU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('QDDIEUDONGBONHIEM') and o.name = 'FK_QDDIEUDO_PB_QDDBN_PHONGBAN')
alter table QDDIEUDONGBONHIEM
   drop constraint FK_QDDIEUDO_PB_QDDBN_PHONGBAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('QDKHENTHUONGKYLUAT') and o.name = 'FK_QDKHENTH_NV_QDKTKL_NHANVIEN')
alter table QDKHENTHUONGKYLUAT
   drop constraint FK_QDKHENTH_NV_QDKTKL_NHANVIEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('QTCONGTAC') and o.name = 'FK_QTCONGTA_LL_QTCT_LYLICH')
alter table QTCONGTAC
   drop constraint FK_QTCONGTA_LL_QTCT_LYLICH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('QTDAOTAO') and o.name = 'FK_QTDAOTAO_LL_QTDT_LYLICH')
alter table QTDAOTAO
   drop constraint FK_QTDAOTAO_LL_QTDT_LYLICH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANGCHAMCONG')
            and   name  = 'NV_BCC_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANGCHAMCONG.NV_BCC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BANGCHAMCONG')
            and   type = 'U')
   drop table BANGCHAMCONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANGLUONG')
            and   name  = 'BL_TTNCN_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANGLUONG.BL_TTNCN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BANGLUONG')
            and   name  = 'BL_TSBD_FK'
            and   indid > 0
            and   indid < 255)
   drop index BANGLUONG.BL_TSBD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BANGLUONG')
            and   type = 'U')
   drop table BANGLUONG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BIENDONGGIACANH')
            and   name  = 'LL_BDGC_FK'
            and   indid > 0
            and   indid < 255)
   drop index BIENDONGGIACANH.LL_BDGC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BIENDONGGIACANH')
            and   type = 'U')
   drop table BIENDONGGIACANH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUCVU')
            and   type = 'U')
   drop table CHUCVU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANTOC')
            and   type = 'U')
   drop table DANTOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIAYTAMUNG')
            and   type = 'U')
   drop table GIAYTAMUNG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOPDONGLD')
            and   name  = 'HD_LHD_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOPDONGLD.HD_LHD_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOPDONGLD')
            and   type = 'U')
   drop table HOPDONGLD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOSOLUONG')
            and   name  = 'HSL_HDLD_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOSOLUONG.HSL_HDLD_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HOSOLUONG')
            and   name  = 'NV_HSL_FK'
            and   indid > 0
            and   indid < 255)
   drop index HOSOLUONG.NV_HSL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HOSOLUONG')
            and   type = 'U')
   drop table HOSOLUONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIHD')
            and   type = 'U')
   drop table LOAIHD
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOAIQDKTKL')
            and   name  = 'LQD_QDKTKL_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOAIQDKTKL.LQD_QDKTKL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAIQDKTKL')
            and   type = 'U')
   drop table LOAIQDKTKL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LYLICH')
            and   name  = 'QT_LL_FK'
            and   indid > 0
            and   indid < 255)
   drop index LYLICH.QT_LL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LYLICH')
            and   name  = 'TH_LL_FK'
            and   indid > 0
            and   indid < 255)
   drop index LYLICH.TH_LL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LYLICH')
            and   name  = 'TG_LL_FK'
            and   indid > 0
            and   indid < 255)
   drop index LYLICH.TG_LL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LYLICH')
            and   name  = 'DT_LL_FK'
            and   indid > 0
            and   indid < 255)
   drop index LYLICH.DT_LL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LYLICH')
            and   name  = 'NV_LL2_FK'
            and   indid > 0
            and   indid < 255)
   drop index LYLICH.NV_LL2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LYLICH')
            and   type = 'U')
   drop table LYLICH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NGOAINGU')
            and   type = 'U')
   drop table NGOAINGU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'NV_BL_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.NV_BL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'GTU_NV_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.GTU_NV_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'NV_LL_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.NV_LL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'NV_CV_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.NV_CV_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NHANVIEN')
            and   name  = 'NV_PB_FK'
            and   indid > 0
            and   indid < 255)
   drop index NHANVIEN.NV_PB_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHANVIEN')
            and   type = 'U')
   drop table NHANVIEN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NN_LL')
            and   name  = 'NN_LL_FK'
            and   indid > 0
            and   indid < 255)
   drop index NN_LL.NN_LL_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NN_LL')
            and   name  = 'NN_LL2_FK'
            and   indid > 0
            and   indid < 255)
   drop index NN_LL.NN_LL2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NN_LL')
            and   type = 'U')
   drop table NN_LL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHONGBAN')
            and   type = 'U')
   drop table PHONGBAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('QDDIEUDONGBONHIEM')
            and   name  = 'CV_QDDDBN_FK'
            and   indid > 0
            and   indid < 255)
   drop index QDDIEUDONGBONHIEM.CV_QDDDBN_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('QDDIEUDONGBONHIEM')
            and   name  = 'PB_QDDBN_FK'
            and   indid > 0
            and   indid < 255)
   drop index QDDIEUDONGBONHIEM.PB_QDDBN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QDDIEUDONGBONHIEM')
            and   type = 'U')
   drop table QDDIEUDONGBONHIEM
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('QDKHENTHUONGKYLUAT')
            and   name  = 'NV_QDKTKL_FK'
            and   indid > 0
            and   indid < 255)
   drop index QDKHENTHUONGKYLUAT.NV_QDKTKL_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QDKHENTHUONGKYLUAT')
            and   type = 'U')
   drop table QDKHENTHUONGKYLUAT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QTCONGTAC')
            and   type = 'U')
   drop table QTCONGTAC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('QTDAOTAO')
            and   name  = 'LL_QTDT_FK'
            and   indid > 0
            and   indid < 255)
   drop index QTDAOTAO.LL_QTDT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QTDAOTAO')
            and   type = 'U')
   drop table QTDAOTAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('QUOCTICH')
            and   type = 'U')
   drop table QUOCTICH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THONGSOBIENDONG')
            and   type = 'U')
   drop table THONGSOBIENDONG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THUETNCN')
            and   type = 'U')
   drop table THUETNCN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TINHOC')
            and   type = 'U')
   drop table TINHOC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TONGIAO')
            and   type = 'U')
   drop table TONGIAO
go

/*==============================================================*/
/* Table: BANGCHAMCONG                                          */
/*==============================================================*/
create table BANGCHAMCONG (
   THANGCC              tinyint              not null,
   MANV                 varchar(10)          null,
   NAMCC                tinyint              not null,
   TONGSOGIOLAMVIEC     float                not null,
   TONGSONGAYNGHICOPHEP int                  not null,
   TONGSONGAYNGHIKHONGPHEP int                  not null,
   TONGSOGIOLAMTHEM     float                not null,
   TONGSOGIOLAMTHEMT7   float                not null,
   TONGSOGIOLAMTHEMCN   float                not null,
   TONGSOGIOLAMTHEMDIPLE float                not null,
   SONGAYNGHIKHONGLUONG int                  not null,
   GHICHUCC             nvarchar(300)         not null,
   constraint PK_BANGCHAMCONG primary key nonclustered (THANGCC)
)
go

/*==============================================================*/
/* Index: NV_BCC_FK                                             */
/*==============================================================*/
create index NV_BCC_FK on BANGCHAMCONG (
MANV ASC
)
go

/*==============================================================*/
/* Table: BANGLUONG                                             */
/*==============================================================*/
create table BANGLUONG (
   THANGBL              tinyint              not null,
   NAMBL                tinyint              not null,
   NGAYCAPNHATBIENDONG  datetime             null,
   NGAYCAPNHATTHUE      datetime             null,
   BACTHUE              int                  null,
   LUONGTOITHIEUBL      int                  not null,
   LUONGHESO            int                  not null,
   LUONGCOBAN           int                  not null,
   COMTRUA              int                  not null,
   DIENTHOAIBL          varchar(20)          not null,
   XANGXE               int                  not null,
   BHXH                 int                  not null,
   BHYT                 int                  not null,
   BHTHATNGHIEP         int                  not null,
   KINHPHICONGDOAN      int                  not null,
   SOTIENGIAMTRU        int                  not null,
   TAMUNGBL             bigint               not null,
   TONGTHUNHAPBL        bigint               not null,
   THUNHAPCHIUTHUE      bigint               not null,
   THUCLANHBL           bigint               not null,
   constraint PK_BANGLUONG primary key nonclustered (THANGBL, NAMBL)
)
go

/*==============================================================*/
/* Index: BL_TSBD_FK                                            */
/*==============================================================*/
create index BL_TSBD_FK on BANGLUONG (
NGAYCAPNHATBIENDONG ASC
)
go

/*==============================================================*/
/* Index: BL_TTNCN_FK                                           */
/*==============================================================*/
create index BL_TTNCN_FK on BANGLUONG (
NGAYCAPNHATTHUE ASC,
BACTHUE ASC
)
go

/*==============================================================*/
/* Table: BIENDONGGIACANH                                       */
/*==============================================================*/
create table BIENDONGGIACANH (
   CMND                 varchar(20)          not null,
   NGAYCAPNHAT          datetime             not null,
   SONGUOIGIAMTRU       int                  not null,
   constraint PK_BIENDONGGIACANH primary key nonclustered (CMND, NGAYCAPNHAT)
)
go

/*==============================================================*/
/* Index: LL_BDGC_FK                                            */
/*==============================================================*/
create index LL_BDGC_FK on BIENDONGGIACANH (
CMND ASC
)
go

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   MACV                 varchar(20)          not null,
   TENCV                nvarchar(50)          not null,
   constraint PK_CHUCVU primary key nonclustered (MACV)
)
go

/*==============================================================*/
/* Table: DANTOC                                                */
/*==============================================================*/
create table DANTOC (
   MADT                 varchar(20)          not null,
   TENDT                nvarchar(50)          not null,
   constraint PK_DANTOC primary key nonclustered (MADT)
)
go

/*==============================================================*/
/* Table: GIAYTAMUNG                                            */
/*==============================================================*/
create table GIAYTAMUNG (
   MAGTU                varchar(30)          not null,
   NGAYTAMUNG           datetime             not null,
   NGAYTHANHTOAN        datetime             not null,
   constraint PK_GIAYTAMUNG primary key nonclustered (MAGTU)
)
go

/*==============================================================*/
/* Table: HOPDONGLD                                             */
/*==============================================================*/
create table HOPDONGLD (
   MAHD                 varchar(20)          not null,
   MALOAI               varchar(20)          null,
   TENHD                nvarchar(50)          not null,
   constraint PK_HOPDONGLD primary key nonclustered (MAHD)
)
go

/*==============================================================*/
/* Index: HD_LHD_FK                                             */
/*==============================================================*/
create index HD_LHD_FK on HOPDONGLD (
MALOAI ASC
)
go

/*==============================================================*/
/* Table: HOSOLUONG                                             */
/*==============================================================*/
create table HOSOLUONG (
   MAHD                 varchar(20)          not null,
   MANV                 varchar(10)          not null,
   TUNGAY               datetime             not null,
   DENNGAY              datetime             not null,
   MUCLUONG             bigint               not null,
   constraint PK_HOSOLUONG primary key nonclustered (MAHD, MANV)
)
go

/*==============================================================*/
/* Index: NV_HSL_FK                                             */
/*==============================================================*/
create index NV_HSL_FK on HOSOLUONG (
MANV ASC
)
go

/*==============================================================*/
/* Index: HSL_HDLD_FK                                           */
/*==============================================================*/
create index HSL_HDLD_FK on HOSOLUONG (
MAHD ASC
)
go

/*==============================================================*/
/* Table: LOAIHD                                                */
/*==============================================================*/
create table LOAIHD (
   MALOAI               varchar(20)          not null,
   TENLOAI              varchar(50)          not null,
   constraint PK_LOAIHD primary key nonclustered (MALOAI)
)
go

/*==============================================================*/
/* Table: LOAIQDKTKL                                            */
/*==============================================================*/
create table LOAIQDKTKL (
   MAQD                 varchar(20)          not null,
   SOQDKTKL             varchar(20)          null,
   TENQD                nvarchar(50)          not null,
   constraint PK_LOAIQDKTKL primary key nonclustered (MAQD)
)
go

/*==============================================================*/
/* Index: LQD_QDKTKL_FK                                         */
/*==============================================================*/
create index LQD_QDKTKL_FK on LOAIQDKTKL (
SOQDKTKL ASC
)
go

/*==============================================================*/
/* Table: LYLICH                                                */
/*==============================================================*/
create table LYLICH (
   CMND                 varchar(20)          not null,
   MANV                 varchar(10)          null,
   MADT                 varchar(20)          null,
   MATONGIAO            varchar(20)          null,
   MATINHOC             varchar(20)          null,
   MAQUOCTICH           varchar(20)          null,
   BIDANH               nvarchar(50)          not null,
   NGAYSINH             datetime             not null,
   GIOITINH             varchar(20)          not null,
   DIACHI               nvarchar(200)         not null,
   HINHANH              varchar(300)         not null,
   TINHTRANGGIADINH     varchar(30)          not null,
   constraint PK_LYLICH primary key nonclustered (CMND)
)
go

/*==============================================================*/
/* Index: NV_LL2_FK                                             */
/*==============================================================*/
create index NV_LL2_FK on LYLICH (
MANV ASC
)
go

/*==============================================================*/
/* Index: DT_LL_FK                                              */
/*==============================================================*/
create index DT_LL_FK on LYLICH (
MADT ASC
)
go

/*==============================================================*/
/* Index: TG_LL_FK                                              */
/*==============================================================*/
create index TG_LL_FK on LYLICH (
MATONGIAO ASC
)
go

/*==============================================================*/
/* Index: TH_LL_FK                                              */
/*==============================================================*/
create index TH_LL_FK on LYLICH (
MATINHOC ASC
)
go

/*==============================================================*/
/* Index: QT_LL_FK                                              */
/*==============================================================*/
create index QT_LL_FK on LYLICH (
MAQUOCTICH ASC
)
go

/*==============================================================*/
/* Table: NGOAINGU                                              */
/*==============================================================*/
create table NGOAINGU (
   MANGOAINGU           varchar(30)          not null,
   TENNGOAINGU          nvarchar(30)          not null,
   constraint PK_NGOAINGU primary key nonclustered (MANGOAINGU)
)
go

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
create table NHANVIEN (
   MANV                 varchar(10)          not null,
   MAPB                 varchar(20)          null,
   MACV                 varchar(20)          null,
   CMND                 varchar(20)          null,
   MAGTU                varchar(30)          null,
   THANGBL              tinyint              null,
   NAMBL                tinyint              null,
   TENNV                nvarchar(30)          not null,
   DIENTHOAINV          varchar(20)          not null,
   EMAIL                varchar(30)          not null,
   constraint PK_NHANVIEN primary key nonclustered (MANV)
)
go

/*==============================================================*/
/* Index: NV_PB_FK                                              */
/*==============================================================*/
create index NV_PB_FK on NHANVIEN (
MAPB ASC
)
go

/*==============================================================*/
/* Index: NV_CV_FK                                              */
/*==============================================================*/
create index NV_CV_FK on NHANVIEN (
MACV ASC
)
go

/*==============================================================*/
/* Index: NV_LL_FK                                              */
/*==============================================================*/
create index NV_LL_FK on NHANVIEN (
CMND ASC
)
go

/*==============================================================*/
/* Index: GTU_NV_FK                                             */
/*==============================================================*/
create index GTU_NV_FK on NHANVIEN (
MAGTU ASC
)
go

/*==============================================================*/
/* Index: NV_BL_FK                                              */
/*==============================================================*/
create index NV_BL_FK on NHANVIEN (
THANGBL ASC,
NAMBL ASC
)
go

/*==============================================================*/
/* Table: NN_LL                                                 */
/*==============================================================*/
create table NN_LL (
   CMND                 varchar(20)          not null,
   MANGOAINGU           varchar(30)          not null,
   constraint PK_NN_LL primary key nonclustered (CMND, MANGOAINGU)
)
go

/*==============================================================*/
/* Index: NN_LL2_FK                                             */
/*==============================================================*/
create index NN_LL2_FK on NN_LL (
MANGOAINGU ASC
)
go

/*==============================================================*/
/* Index: NN_LL_FK                                              */
/*==============================================================*/
create index NN_LL_FK on NN_LL (
CMND ASC
)
go

/*==============================================================*/
/* Table: PHONGBAN                                              */
/*==============================================================*/
create table PHONGBAN (
   MAPB                 varchar(20)          not null,
   TENPB                nvarchar(50)          not null,
   constraint PK_PHONGBAN primary key nonclustered (MAPB)
)
go

/*==============================================================*/
/* Table: QDDIEUDONGBONHIEM                                     */
/*==============================================================*/
create table QDDIEUDONGBONHIEM (
   SOQD                 varchar(30)          not null,
   MAPB                 varchar(20)          null,
   MACV                 varchar(20)          null,
   NGAYKY               datetime             not null,
   NGUOIKY              nvarchar(50)          not null,
   LYDOQD               nvarchar(300)         not null,
   GHICHUQD             nvarchar(300)         not null,
   constraint PK_QDDIEUDONGBONHIEM primary key nonclustered (SOQD)
)
go

/*==============================================================*/
/* Index: PB_QDDBN_FK                                           */
/*==============================================================*/
create index PB_QDDBN_FK on QDDIEUDONGBONHIEM (
MAPB ASC
)
go

/*==============================================================*/
/* Index: CV_QDDDBN_FK                                          */
/*==============================================================*/
create index CV_QDDDBN_FK on QDDIEUDONGBONHIEM (
MACV ASC
)
go

/*==============================================================*/
/* Table: QDKHENTHUONGKYLUAT                                    */
/*==============================================================*/
create table QDKHENTHUONGKYLUAT (
   SOQDKTKL             varchar(20)          not null,
   MANV                 varchar(10)          null,
   SOTIEN               bigint               not null,
   LYDOQD               nvarchar(300)         not null,
   NGAYKYQD             datetime             not null,
   NGUOIKYQD            nvarchar(50)          not null,
   GHICHUQD             nvarchar(300)         not null,
   constraint PK_QDKHENTHUONGKYLUAT primary key nonclustered (SOQDKTKL)
)
go

/*==============================================================*/
/* Index: NV_QDKTKL_FK                                          */
/*==============================================================*/
create index NV_QDKTKL_FK on QDKHENTHUONGKYLUAT (
MANV ASC
)
go

/*==============================================================*/
/* Table: QTCONGTAC                                             */
/*==============================================================*/
create table QTCONGTAC (
   CMND                 varchar(20)          not null,
   TUNGAYCT             datetime             not null,
   DENNGAYCT            datetime             not null,
   VITRICT              nvarchar(30)          not null,
   DONVICT              nvarchar(100)         not null,
   constraint PK_QTCONGTAC primary key nonclustered (CMND)
)
go

/*==============================================================*/
/* Table: QTDAOTAO                                              */
/*==============================================================*/
create table QTDAOTAO (
   CMND                 varchar(20)          not null,
   TUNAM                tinyint              not null,
   DENNAM               tinyint              not null,
   CHUNGCHI             nvarchar(50)          not null,
   BANGCAP              nvarchar(50)          not null,
   DONVIDT              nvarchar(300)         not null,
   constraint PK_QTDAOTAO primary key nonclustered (CMND, TUNAM)
)
go

/*==============================================================*/
/* Index: LL_QTDT_FK                                            */
/*==============================================================*/
create index LL_QTDT_FK on QTDAOTAO (
CMND ASC
)
go

/*==============================================================*/
/* Table: QUOCTICH                                              */
/*==============================================================*/
create table QUOCTICH (
   MAQUOCTICH           varchar(20)          not null,
   TENQUOCTICH          nvarchar(50)          not null,
   constraint PK_QUOCTICH primary key nonclustered (MAQUOCTICH)
)
go

/*==============================================================*/
/* Table: THONGSOBIENDONG                                       */
/*==============================================================*/
create table THONGSOBIENDONG (
   NGAYCAPNHATBIENDONG  datetime             not null,
   MUCGIAMTRUGIACANH    int                  not null,
   PHUCAPCV             int                  not null,
   LUONGTTBD            int                  not null,
   THUONGLEBD           bigint               not null,
   THUONGTETBD          bigint               not null,
   TYLEBHXH             float                not null,
   TYLEBHTN             float                not null,
   TYLEBHYT             float                not null,
   PHUCAPCOM            int                  not null,
   PHUCAPXANGXE         int                  not null,
   PHUCAPDOCHAI         int                  not null,
   constraint PK_THONGSOBIENDONG primary key nonclustered (NGAYCAPNHATBIENDONG)
)
go

/*==============================================================*/
/* Table: THUETNCN                                              */
/*==============================================================*/
create table THUETNCN (
   NGAYCAPNHATTHUE      datetime             not null,
   BACTHUE              int                  not null,
   THUESUAT             float                not null,
   TUSOTIEN             bigint               not null,
   DENSOTIEN            bigint               not null,
   constraint PK_THUETNCN primary key nonclustered (NGAYCAPNHATTHUE, BACTHUE)
)
go

/*==============================================================*/
/* Table: TINHOC                                                */
/*==============================================================*/
create table TINHOC (
   MATINHOC             varchar(20)          not null,
   TENTINHOC           nvarchar(50)          not null,
   constraint PK_TINHOC primary key nonclustered (MATINHOC)
)
go

/*==============================================================*/
/* Table: TONGIAO                                               */
/*==============================================================*/
create table TONGIAO (
   MATONGIAO            varchar(20)          not null,
   TENTONGIAO           nvarchar(30)          not null,
   constraint PK_TONGIAO primary key nonclustered (MATONGIAO)
)
go

alter table BANGCHAMCONG
   add constraint FK_BANGCHAM_NV_BCC_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table BANGLUONG
   add constraint FK_BANGLUON_BL_TSBD_THONGSOB foreign key (NGAYCAPNHATBIENDONG)
      references THONGSOBIENDONG (NGAYCAPNHATBIENDONG)
go

alter table BANGLUONG
   add constraint FK_BANGLUON_BL_TTNCN_THUETNCN foreign key (NGAYCAPNHATTHUE, BACTHUE)
      references THUETNCN (NGAYCAPNHATTHUE, BACTHUE)
go

alter table BIENDONGGIACANH
   add constraint FK_BIENDONG_LL_BDGC_LYLICH foreign key (CMND)
      references LYLICH (CMND)
go

alter table HOPDONGLD
   add constraint FK_HOPDONGL_HD_LHD_LOAIHD foreign key (MALOAI)
      references LOAIHD (MALOAI)
go

alter table HOSOLUONG
   add constraint FK_HOSOLUON_HSL_HDLD_HOPDONGL foreign key (MAHD)
      references HOPDONGLD (MAHD)
go

alter table HOSOLUONG
   add constraint FK_HOSOLUON_NV_HSL_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table LOAIQDKTKL
   add constraint FK_LOAIQDKT_LQD_QDKTK_QDKHENTH foreign key (SOQDKTKL)
      references QDKHENTHUONGKYLUAT (SOQDKTKL)
go

alter table LYLICH
   add constraint FK_LYLICH_DT_LL_DANTOC foreign key (MADT)
      references DANTOC (MADT)
go

alter table LYLICH
   add constraint FK_LYLICH_NV_LL2_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table LYLICH
   add constraint FK_LYLICH_QT_LL_QUOCTICH foreign key (MAQUOCTICH)
      references QUOCTICH (MAQUOCTICH)
go

alter table LYLICH
   add constraint FK_LYLICH_TG_LL_TONGIAO foreign key (MATONGIAO)
      references TONGIAO (MATONGIAO)
go

alter table LYLICH
   add constraint FK_LYLICH_TH_LL_TINHOC foreign key (MATINHOC)
      references TINHOC (MATINHOC)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_GTU_NV_GIAYTAMU foreign key (MAGTU)
      references GIAYTAMUNG (MAGTU)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_NV_BL_BANGLUON foreign key (THANGBL, NAMBL)
      references BANGLUONG (THANGBL, NAMBL)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_NV_CV_CHUCVU foreign key (MACV)
      references CHUCVU (MACV)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_NV_LL_LYLICH foreign key (CMND)
      references LYLICH (CMND)
go

alter table NHANVIEN
   add constraint FK_NHANVIEN_NV_PB_PHONGBAN foreign key (MAPB)
      references PHONGBAN (MAPB)
go

alter table NN_LL
   add constraint FK_NN_LL_NN_LL_LYLICH foreign key (CMND)
      references LYLICH (CMND)
go

alter table NN_LL
   add constraint FK_NN_LL_NN_LL2_NGOAINGU foreign key (MANGOAINGU)
      references NGOAINGU (MANGOAINGU)
go

alter table QDDIEUDONGBONHIEM
   add constraint FK_QDDIEUDO_CV_QDDDBN_CHUCVU foreign key (MACV)
      references CHUCVU (MACV)
go

alter table QDDIEUDONGBONHIEM
   add constraint FK_QDDIEUDO_PB_QDDBN_PHONGBAN foreign key (MAPB)
      references PHONGBAN (MAPB)
go

alter table QDKHENTHUONGKYLUAT
   add constraint FK_QDKHENTH_NV_QDKTKL_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV)
go

alter table QTCONGTAC
   add constraint FK_QTCONGTA_LL_QTCT_LYLICH foreign key (CMND)
      references LYLICH (CMND)
go

alter table QTDAOTAO
   add constraint FK_QTDAOTAO_LL_QTDT_LYLICH foreign key (CMND)
      references LYLICH (CMND)
go

