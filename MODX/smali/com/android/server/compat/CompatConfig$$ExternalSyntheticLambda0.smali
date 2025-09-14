.class public final synthetic Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-wide p2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iget-wide v1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;->f$1:J

    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    new-instance p0, Lcom/android/server/compat/CompatChange;

    .line 13
    invoke-direct {p0, v1, v2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    .line 16
    return-object p0
.end method
