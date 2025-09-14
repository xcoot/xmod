.class public final Lcom/android/server/knox/dar/DarManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

.field public mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    .line 13
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 23
    return-void
.end method

.method public static enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x1482

    .line 11
    if-eq v1, v2, :cond_1

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    move-result v2

    .line 17
    if-ne v0, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    .line 22
    const-string v3, "Security Exception Occurred while pid["

    .line 24
    const-string v4, "] with uid["

    .line 26
    const-string v5, "] trying to access methodName ["

    .line 28
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "] in [DarManagerService] service"

    .line 34
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v2

    .line 42
    :cond_1
    :goto_0
    return-void
.end method
