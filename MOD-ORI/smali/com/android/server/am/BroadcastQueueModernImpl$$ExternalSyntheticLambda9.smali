.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda9;->f$2:Ljava/io/PrintWriter;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, v3, v1}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v4, "dispatch of "

    .line 19
    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method
