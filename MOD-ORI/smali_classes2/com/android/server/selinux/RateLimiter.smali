.class public final Lcom/android/server/selinux/RateLimiter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mNextPermit:Ljava/time/Instant;

.field public final mWindow:Ljava/time/Duration;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/RateLimiter;->mNextPermit:Ljava/time/Instant;

    .line 3
    iput-object p1, p0, Lcom/android/server/selinux/RateLimiter;->mClock:Lcom/android/internal/os/Clock;

    .line 4
    iput-object p2, p0, Lcom/android/server/selinux/RateLimiter;->mWindow:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, v0, p1}, Lcom/android/server/selinux/RateLimiter;-><init>(Lcom/android/internal/os/Clock;Ljava/time/Duration;)V

    return-void
.end method
