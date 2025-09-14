.class public final Lcom/android/server/input/InputSettingsObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputSettingsObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver$1;->this$0:Lcom/android/server/input/InputSettingsObserver;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver$1;->this$0:Lcom/android/server/input/InputSettingsObserver;

    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/function/Consumer;

    .line 25
    const-string/jumbo p2, "user switched"

    .line 28
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
