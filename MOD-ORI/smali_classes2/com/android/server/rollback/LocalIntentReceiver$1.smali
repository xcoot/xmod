.class public final Lcom/android/server/rollback/LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rollback/LocalIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/rollback/LocalIntentReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
