.class public final Lcom/android/server/RescueParty$RescuePartyObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field public static sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;


# instance fields
.field public final mCallingPackageNamespaceSetMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mNamespaceCallingPackageSetMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public static reset()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method


# virtual methods
.method public final execute(Landroid/content/pm/VersionedPackage;II)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    if-eq p2, v0, :cond_2

    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p2, v0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return v1

    .line 17
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 20
    move-result p2

    .line 21
    const-string/jumbo v0, "com.android.systemui"

    .line 24
    if-eqz p2, :cond_4

    .line 26
    if-nez p1, :cond_3

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    :goto_1
    invoke-static {p3, v1, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 40
    move-result p2

    .line 41
    goto :goto_3

    .line 42
    :cond_4
    if-nez p1, :cond_5

    .line 44
    goto :goto_2

    .line 45
    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    :goto_2
    invoke-static {p3, v1, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 56
    move-result p2

    .line 57
    :goto_3
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 59
    if-nez p1, :cond_6

    .line 61
    const/4 p1, 0x0

    .line 62
    goto :goto_4

    .line 63
    :cond_6
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    :goto_4
    invoke-static {p0, p1, p2}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 70
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final executeBootLoopMitigation(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    invoke-static {p1, v1, v2}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p1, v1, v2}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 25
    move-result p1

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p0, v2, p1}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "rescue-party-observer"

    .line 4
    return-object p0
.end method

.method public final mayObservePackage(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    return v1

    .line 16
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object p0

    .line 22
    :try_start_1
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 25
    move-result-object p0

    .line 26
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    const/16 p1, 0x9

    .line 30
    and-int/2addr p0, p1

    .line 31
    if-ne p0, p1, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_0
    move v2, v1

    .line 36
    :catch_1
    return v2
.end method

.method public final onBootLoop(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 12
    move-result p0

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-static {p1, v1, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-static {p1, v1, v0}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_4

    .line 8
    const/4 p0, 0x3

    .line 9
    if-eq p2, p0, :cond_0

    .line 11
    const/4 p0, 0x4

    .line 12
    if-ne p2, p0, :cond_4

    .line 14
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 17
    move-result p0

    .line 18
    const-string/jumbo p2, "com.android.systemui"

    .line 21
    if-eqz p0, :cond_2

    .line 23
    if-nez p1, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    :goto_0
    invoke-static {p3, v0, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    .line 41
    move-result p0

    .line 42
    return p0

    .line 43
    :cond_2
    if-nez p1, :cond_3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    :goto_1
    invoke-static {p3, v0, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    .line 57
    move-result p0

    .line 58
    invoke-static {p0}, Lcom/android/server/RescueParty;->-$$Nest$smmapRescueLevelToUserImpact(I)I

    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_4
    return v0
.end method
