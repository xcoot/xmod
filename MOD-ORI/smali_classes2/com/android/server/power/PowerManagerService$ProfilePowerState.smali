.class public final Lcom/android/server/power/PowerManagerService$ProfilePowerState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastUserActivityTime:J

.field public mLockingNotified:Z

.field public mScreenOffTimeout:J

.field public mScreenOffTimeoutForUser:J

.field public final mUserId:I

.field public mWakeLockSummary:I


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "new ProfilePowerState: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PowerManagerService"

    invoke-static {v0, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    const-wide p1, 0x7fffffffffffffffL

    .line 9
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    .line 10
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    .line 11
    iput-wide p5, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "new ProfilePowerState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    .line 4
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    .line 5
    iput-wide p4, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    return-void
.end method
