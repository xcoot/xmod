.class public final Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public intent:Landroid/content/Intent;

.field public final isReceiver:Z

.field public platformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final resolveForStart:Z

.field public final resolvedType:Ljava/lang/String;

.field public snapshot:Lcom/android/server/pm/Computer;


# direct methods
.method public constructor <init>(ZIILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    .line 11
    .line 12
    iput p2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 13
    .line 14
    if-eqz p6, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p3, -0x1

    .line 18
    :goto_0
    iput p3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final isChangeEnabled(J)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget p0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 13
    .line 14
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    array-length v4, v2

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    array-length v4, v2

    .line 30
    move v6, v1

    .line 31
    move v5, v3

    .line 32
    :goto_0
    if-ge v5, v4, :cond_3

    .line 33
    .line 34
    aget-object v7, v2, v5

    .line 35
    .line 36
    invoke-static {v7, p0}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v0, p1, p2, v7}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    and-int/2addr v6, v7

    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    iget-object p0, v0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 61
    .line 62
    if-nez p0, :cond_2

    .line 63
    .line 64
    move v6, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    xor-int/2addr p0, v1

    .line 71
    move v6, p0

    .line 72
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v1, v3

    .line 76
    :cond_5
    :goto_3
    return v1
.end method

.method public final reportEvent(IZ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    .line 10
    .line 11
    iget v3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    .line 12
    .line 13
    move v1, p1

    .line 14
    move v6, p2

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SaferIntentUtils;->reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
