.class public abstract Lcom/android/server/location/gnss/sec/GnssConstants;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

.field public static final NAVIGATION_APP_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string/jumbo v16, "com.slbd.nmea2log"

    .line 4
    const-string/jumbo v17, "com.gnssdemo"

    .line 7
    const-string/jumbo v0, "com.android.angryGps"

    .line 10
    const-string/jumbo v1, "com.android.cts.verifier"

    .line 13
    const-string v2, "android.location.cts"

    .line 15
    const-string v3, "android.location.cts.gnss"

    .line 17
    const-string v4, "android.location.cts.fine"

    .line 19
    const-string v5, "android.location.cts.coarse"

    .line 21
    const-string/jumbo v6, "com.android.shell"

    .line 24
    const-string v7, "android.seclocation.cts"

    .line 26
    const-string v8, "android.seclonglocation.cts"

    .line 28
    const-string/jumbo v9, "com.google.android.location.gts"

    .line 31
    const-string/jumbo v10, "com.starriver.gnsstester"

    .line 34
    const-string/jumbo v11, "com.kt.serviceagent"

    .line 37
    const-string/jumbo v12, "com.kaf.apitest"

    .line 40
    const-string/jumbo v13, "com.kt.oladc"

    .line 43
    const-string/jumbo v14, "com.rohdeschwarz.e112advanced"

    .line 46
    const-string/jumbo v15, "com.cetecom.e112"

    .line 49
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

    .line 55
    const-string v0, "Y29tLnRlbmNlbnQubWFw"

    .line 57
    const-string v1, "Y29tLmJhaWR1LmNhcmxpZmU="

    .line 59
    const-string v2, "Y29tLmF1dG9uYXZpLm1pbmltYXA="

    .line 61
    const-string v3, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 63
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    .line 69
    return-void
.end method
