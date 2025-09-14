.class public final synthetic Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/compat/CompatConfig;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/compat/CompatConfig;

    .line 6
    iput-object p2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-wide p3, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$2:J

    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/compat/CompatConfig;

    .line 3
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iget-wide v2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$2:J

    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 p0, 0x0

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 19
    new-instance p0, Lcom/android/server/compat/CompatChange;

    .line 21
    invoke-direct {p0, v2, v3}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    .line 24
    return-object p0
.end method
