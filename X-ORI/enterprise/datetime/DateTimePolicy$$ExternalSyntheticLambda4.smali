.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda4;->f$0:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
