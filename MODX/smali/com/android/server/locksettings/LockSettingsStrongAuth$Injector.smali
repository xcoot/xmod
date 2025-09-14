.class public Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 0

    .line 1
    const-class p0, Landroid/app/AlarmManager;

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/AlarmManager;

    .line 9
    return-object p0
.end method

.method public getDefaultStrongAuthFlags(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getElapsedRealtimeMs()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 6
    return-object p0
.end method

.method public getNextAlarmTimeMs(J)J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    return-wide v0
.end method
