.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

.field public final synthetic f$1:Landroid/window/ITrustedPresentationListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Landroid/window/TrustedPresentationThresholds;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITrustedPresentationListener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$4:Landroid/window/TrustedPresentationThresholds;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITrustedPresentationListener;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$4:Landroid/window/TrustedPresentationThresholds;

    .line 10
    .line 11
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TPL_enabled:[Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aget-boolean v4, v4, v5

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    int-to-long v5, v2

    .line 26
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    const-wide v10, -0x5538b0cc98a8c4fcL

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const/4 v12, 0x4

    .line 50
    const/4 v13, 0x0

    .line 51
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 57
    .line 58
    new-instance v6, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ljava/util/ArrayList;

    .line 68
    .line 69
    new-instance v5, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    .line 70
    .line 71
    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;-><init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    iget-object v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 82
    .line 83
    new-instance v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    invoke-direct {v2, v4}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    .line 93
    .line 94
    iget v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    iput v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    .line 99
    .line 100
    iget-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 101
    .line 102
    if-eqz p0, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    new-instance p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 106
    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController$1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    .line 108
    .line 109
    .line 110
    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, [Landroid/view/InputWindowHandle;

    .line 119
    .line 120
    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 121
    .line 122
    :goto_0
    iget-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl([Landroid/view/InputWindowHandle;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
