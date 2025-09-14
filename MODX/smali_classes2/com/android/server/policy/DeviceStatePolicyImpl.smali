.class public final Lcom/android/server/policy/DeviceStatePolicyImpl;
.super Lcom/android/server/devicestate/DeviceStatePolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "system/devicestate/"

    .line 11
    .line 12
    .line 13
    const-string v2, "device_state_configuration.xml"

    .line 14
    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "etc/devicestate/"

    .line 36
    .line 37
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v0, v3

    .line 53
    :goto_0
    if-nez v0, :cond_2

    .line 54
    .line 55
    invoke-static {p1, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v1, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_1
    iput-object p1, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
