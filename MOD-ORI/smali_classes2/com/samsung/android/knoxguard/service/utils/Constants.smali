.class public final Lcom/samsung/android/knoxguard/service/utils/Constants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALARM_ACTION_RETRY_LOCK:I = 0x1

.field public static final ALARM_TYPE:Ljava/lang/String; = "alarm_type"

.field public static final ALARM_TYPE_UNDEFINED:I = -0x1

.field public static final CSC_FEATURE_SUPPORT_KNOXGUARD:Ljava/lang/String; = "CscFeature_Knox_SupportKnoxGuard"

.field public static final EMMC_CID:Ljava/lang/String; = "/sys/block/mmcblk0/device/cid"

.field public static final EMMC_NAME:Ljava/lang/String; = "/sys/block/mmcblk0/device/name"

.field public static final EMMC_UN:Ljava/lang/String; = "/sys/block/mmcblk0/device/unique_number"

.field public static final EMMC_UN_R:Ljava/lang/String; = "/sys/class/sec/mmc/un"

.field public static final ERROR_CLIENT_APP_DATA_CLEARED:Ljava/lang/String; = "3001"

.field public static final ERROR_CLIENT_INTEGRITY_FOR_CHINA:Ljava/lang/String; = "3040"

.field public static final ERROR_KGTA_APSERIAL_FAILED:Ljava/lang/String; = "1002"

.field public static final ERROR_KGTA_HMAC_MISMATCH:Ljava/lang/String; = "1004"

.field public static final ERROR_KGTA_INIT_FAILED:Ljava/lang/String; = "1001"

.field public static final ERROR_KGTA_RPMB_UNAVAILABLE:Ljava/lang/String; = "1003"

.field public static final ERROR_LOCK_FROM_USER_PRESENT:Ljava/lang/String; = "2003"

.field public static final ERROR_RETRY_LOCK_DEFAULT:Ljava/lang/String; = "2002"

.field public static final INTENT_KG_PACKAGE_ADDED:Ljava/lang/String; = "com.samsung.kgclient.android.intent.action.KG_PACKAGE_ADDED"

.field public static final INTENT_RETRY_LOCK:Ljava/lang/String; = "com.samsung.android.knoxguard.RETRY_LOCK"

.field public static final INTENT_SECSETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final INTENT_SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

.field public static final IS_FIRST_API_SUPPORT_SF_POLICY:Z

.field public static final IS_SUPPORT_KGTA:Z

.field public static final JSON_CLIENT_DATA_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_CLIENT_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final JSON_KG_POLICY_COMPANY:Ljava/lang/String; = "companyName"

.field public static final JSON_KG_POLICY_GENERAL:Ljava/lang/String; = "generalInfo"

.field public static final KG_APP_TITLE:Ljava/lang/String; = "Payment Services"

.field public static final KG_LOG_URI:Landroid/net/Uri;

.field public static final KG_OTP_BIT_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.boot.kg.bit"

.field public static final KG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.kgclient"

.field public static final KG_PERMISSION:Ljava/lang/String; = "com.samsung.android.knoxguard.STATUS"

.field public static final KG_SERVICE_VERSION:I = 0xa21fe81

.field public static final KG_STATE_ACTIVE:I = 0x2

.field public static final KG_STATE_CHECKING:I = 0x1

.field public static final KG_STATE_COMPLETED:I = 0x4

.field public static final KG_STATE_ERROR:I = 0x5

.field public static final KG_STATE_LOCKED:I = 0x3

.field public static final KG_STATE_PRENORMAL:I = 0x0

.field public static final KG_SYSTEM_PROPERTY:Ljava/lang/String; = "knox.kg.state"

.field public static final MESSAGE_TYPE_COMPLETE:Ljava/lang/String; = "complete"

.field public static final OTP_BIT_FIRST_BOOT:Ljava/lang/String; = "00"

.field public static final OTP_BIT_KG_COMPLETED:Ljava/lang/String; = "11"

.field public static final OTP_BIT_KG_ENABLED:Ljava/lang/String; = "01"

.field public static final OTP_BIT_KG_UNKNOWN:Ljava/lang/String; = "FF"

.field public static final POWEROFF_CODE_SYSTEMUI_DISABLED:I = 0x1

.field public static final POWEROFF_CODE_SYSTEMUI_HIDDEN:I = 0x2

.field public static final POWEROFF_CODE_SYSTEMUI_NOTREADY:I = 0x4

.field public static final PROTECTED_APP_OPS_LIST:Ljava/util/List;

.field public static final RETRY_LOCK_ALARM_PERIOD:J = 0x493e0L

.field public static final RLC_STATE_BLINKED:Ljava/lang/String; = "Blink"

.field public static final RLC_STATE_CHECKING:Ljava/lang/String; = "Checking"

.field public static final RLC_STATE_COMPLETED:Ljava/lang/String; = "Completed"

.field public static final RLC_STATE_LOCKED:Ljava/lang/String; = "Locked"

.field public static final RLC_STATE_NORMAL:Ljava/lang/String; = "Normal"

.field public static final RLC_STATE_NULL:Ljava/lang/String; = ""

.field public static final RLC_STATE_PRENORMAL:Ljava/lang/String; = "Prenormal"

.field public static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final TA_INFO_AP_SERIAL:I = 0x4

.field public static final TA_INFO_CERT_PROVISIONED:I = 0x2

.field public static final TA_INFO_HOTP_RETRY_COUNTER:I = 0x3

.field public static final TA_INFO_VERSION:I = 0x1

.field public static final TA_V3:I = 0x3

.field public static final TA_V4:I = 0x4

.field public static final TZ_KGTA_INIT_FAILED:I = -0x3ee

.field public static final TZ_KGTA_RPMB_HMAC_MISMATCH:I = 0x207

.field public static final TZ_KGTA_RPMB_UNAVAILABLE:I = 0x201

.field public static final UFS_UN:Ljava/lang/String; = "/sys/class/scsi_host/host0/unique_number"

.field public static final UFS_UN_R:Ljava/lang/String; = "/sys/class/sec/ufs/un"

.field public static final V3_OTP_BIT_KG_FUSED:Ljava/lang/String; = "1"

.field public static final V3_OTP_BIT_KG_INITIAL:Ljava/lang/String; = "0"

.field public static final strState:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "content://com.samsung.android.kgclient.statusprovider/CONTENT_LOG"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->KG_LOG_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v5, "Completed"

    .line 10
    .line 11
    const-string v6, "Error"

    .line 12
    .line 13
    const-string v1, "Prenormal"

    .line 14
    .line 15
    const-string v2, "Checking"

    .line 16
    .line 17
    const-string v3, "Active"

    .line 18
    .line 19
    const-string v4, "Locked"

    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->strState:[Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x1e

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-lt v2, v3, :cond_0

    .line 39
    .line 40
    move v2, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v1

    .line 43
    :goto_0
    sput-boolean v2, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_SUPPORT_KGTA:Z

    .line 44
    .line 45
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v2, 0x23

    .line 50
    .line 51
    if-lt v0, v2, :cond_1

    .line 52
    .line 53
    move v1, v4

    .line 54
    :cond_1
    sput-boolean v1, Lcom/samsung/android/knoxguard/service/utils/Constants;->IS_FIRST_API_SUPPORT_SF_POLICY:Z

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/samsung/android/knoxguard/service/utils/Constants;->PROTECTED_APP_OPS_LIST:Ljava/util/List;

    .line 62
    .line 63
    const/16 v1, 0x3f

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x46

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x28

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const/16 v1, 0xb

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const/16 v1, 0x77

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    const/16 v1, 0x6b

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    const/16 v1, 0x7d

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
