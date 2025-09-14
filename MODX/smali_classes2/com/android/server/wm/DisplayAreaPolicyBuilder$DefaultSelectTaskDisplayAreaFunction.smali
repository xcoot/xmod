.class public final Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDisplayId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    aget-boolean v0, v0, v1

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 48
    .line 49
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-wide v1, 0x443f9eed041930e9L    # 5.833008802187104E20

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object p1, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 69
    .line 70
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDisplayId:I

    .line 71
    .line 72
    if-ne p1, v1, :cond_4

    .line 73
    .line 74
    move-object p0, v0

    .line 75
    :goto_0
    return-object p0

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "The specified TaskDisplayArea must attach to Display#"

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDisplayId:I

    .line 86
    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p0, ", but it is in Display#"

    .line 91
    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    .line 97
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
