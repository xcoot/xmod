.class public final Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCount:I

.field public mStartTime:J

.field public mSuccessiveRateLimitCycles:I

.field public final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    .line 14
    return-void
.end method
