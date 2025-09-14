.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public key:I

.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->asBinder()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->key:I

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mSystemUiCallbacks:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mIsCallbackDied:Z

    .line 71
    .line 72
    :cond_2
    return-void
.end method
