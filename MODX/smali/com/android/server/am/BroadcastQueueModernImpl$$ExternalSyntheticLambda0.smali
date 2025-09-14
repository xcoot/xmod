.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda0;->f$1:Ljava/io/PrintWriter;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 14
    const-string/jumbo v2, "idle"

    .line 17
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 20
    move-result p0

    .line 21
    return p0
.end method
