.class public final Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInEmergencyMode:Z

.field public final mIsCachedLocation:Z

.field public final mOtherProtocolStackName:Ljava/lang/String;

.field public final mProtocolStack:B

.field public final mProxyAppPackageName:Ljava/lang/String;

.field public final mRequestor:B

.field public final mRequestorId:Ljava/lang/String;

.field public final mResponseType:B


# direct methods
.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput-byte p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    .line 9
    .line 10
    iput-byte p4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    .line 13
    .line 14
    iput-byte p6, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const-string v0, "<Unknown>"

    .line 24
    .line 25
    :goto_0
    move-object v6, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string v0, "ACCEPTED_LOCATION_PROVIDED"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "ACCEPTED_NO_LOCATION_PROVIDED"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "REJECTED"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    .line 53
    .line 54
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string/jumbo v0, "{proxyAppPackageName: %s, protocolStack: %d, otherProtocolStackName: %s, requestor: %d, requestorId: %s, responseType: %s, inEmergencyMode: %b, isCachedLocation: %b}"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method
