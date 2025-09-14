.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

.field public final synthetic f$1:Landroid/window/ITrustedPresentationListener;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITrustedPresentationListener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITrustedPresentationListener;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_TPL_enabled:[Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aget-boolean v4, v2, v3

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    int-to-long v5, p0

    .line 22
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 23
    .line 24
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    const-wide v8, 0x333969f592d6333aL    # 6.1777777016535966E-62

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    const/4 v11, 0x0

    .line 39
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    .line 58
    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    aget-boolean v2, v2, v3

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    int-to-long v2, p0

    .line 71
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TPL:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 72
    .line 73
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const/4 v8, 0x4

    .line 82
    const/4 v9, 0x0

    .line 83
    const-wide v6, 0x2fd0fb8da7ea3c5fL    # 2.2916383957592763E-78

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget v1, v6, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    .line 93
    .line 94
    add-int/lit8 v1, v1, -0x1

    .line 95
    .line 96
    iput v1, v6, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    .line 97
    .line 98
    if-lez v1, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, v6, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    .line 102
    .line 103
    invoke-interface {v1, v6, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 104
    .line 105
    .line 106
    iget-object v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v4, v5, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_1
    iget-object p0, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_5

    .line 129
    .line 130
    iget-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 131
    .line 132
    if-nez p0, :cond_4

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    .line 140
    .line 141
    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:[Landroid/view/InputWindowHandle;

    .line 142
    .line 143
    :cond_5
    :goto_2
    return-void
.end method
