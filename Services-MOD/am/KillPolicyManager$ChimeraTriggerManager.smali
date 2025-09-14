.class public final Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PMM_CRITICAL_SCORE_THRESHOLD:F

.field public static final TRIGGER_MIN_INTERVAL:J

.field public static mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;


# instance fields
.field public mChimeraTriggerRequired:Z

.field public final mContext:Landroid/content/Context;

.field public mLastPolicyScore:F

.field public mLastTriggeredTime:J


# direct methods
.method public static -$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

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
    sget-object p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.sys.kpm.debug.chimera_critical_score_threshold"

    .line 4
    const-string v1, "3.0"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-wide/16 v1, 0x1

    .line 23
    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ""

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    const-string/jumbo v1, "persist.sys.kpm.debug.chimera_trigger_min_interval"

    .line 46
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    move-result-wide v0

    .line 54
    sput-wide v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->TRIGGER_MIN_INTERVAL:J

    .line 56
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    .line 11
    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    .line 15
    const-string v0, "ActivityManager"

    .line 17
    const-string v1, "ChimeraTriggerManager() - start"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method
