.class public final Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUniqueListeners:Landroid/util/ArrayMap;

.field public final mWindowToListeners:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/wm/TrustedPresentationListenerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 12
    .line 13
    new-instance p1, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    :goto_1
    if-ltz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    .line 34
    .line 35
    invoke-interface {v4}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-ne v4, p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/Optional;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    iget v3, v3, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    .line 58
    .line 59
    if-ne v3, v4, :cond_1

    .line 60
    .line 61
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-void
.end method
