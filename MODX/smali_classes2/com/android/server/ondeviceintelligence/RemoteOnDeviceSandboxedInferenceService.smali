.class public Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LONG_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;->LONG_TIMEOUT:J

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v2, 0x1e

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string/jumbo v3, "on_device_inference_unbind_timeout_ms"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v3, v1, v2, p0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method

.method public final getRequestTimeoutMs()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;->LONG_TIMEOUT:J

    .line 2
    .line 3
    return-wide v0
.end method
