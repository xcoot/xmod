.class public abstract Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AID_EXEMPT_LIST:[Ljava/lang/Integer;

.field public static final APPS_TO_RESTART_PROXY:[Ljava/lang/String;

.field public static final BLACK_LISTED_APPLICATION:[Ljava/lang/String;

.field public static final EMAIL_PACKAGE_LIST:[Ljava/lang/String;

.field public static final USB_TETHERING_IFACE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "com.android.providers.downloads"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "com.android.chrome"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    .line 14
    .line 15
    .line 16
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->APPS_TO_RESTART_PROXY:[Ljava/lang/String;

    .line 21
    .line 22
    const-string/jumbo v0, "com.samsung.android.email.sync"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "com.samsung.android.email.ui"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "com.samsung.android.email.provider"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v3, "com.samsung.android.email.widget"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v4, "com.samsung.android.email.composer"

    .line 35
    .line 36
    .line 37
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->EMAIL_PACKAGE_LIST:[Ljava/lang/String;

    .line 42
    .line 43
    const/16 v0, 0x41b

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v1, 0x405

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/16 v2, 0x41c

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->AID_EXEMPT_LIST:[Ljava/lang/Integer;

    .line 66
    .line 67
    const-string/jumbo v0, "rndis"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "usb"

    .line 71
    .line 72
    .line 73
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->USB_TETHERING_IFACE:[Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method
