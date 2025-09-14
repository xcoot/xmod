.class public final Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final key:I

.field public final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "binderDied() key = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SystemUIAdapter"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 25
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 27
    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 41
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 43
    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    .line 55
    invoke-interface {v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 63
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 65
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 67
    iget v1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 78
    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->mCallbacks:Ljava/util/HashMap;

    .line 80
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->isCallbackDied:Z

    .line 91
    :cond_1
    return-void
.end method
