.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda38;->f$0:Ljava/io/PrintWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda38;->$r8$classId:I

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda38;->f$0:Ljava/io/PrintWriter;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 25
    .line 26
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/16 v4, 0x20

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v5, "  imeLayeringTarget in display# "

    .line 44
    .line 45
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    if-eqz v2, :cond_1

    .line 58
    .line 59
    const-string v0, "  imeInputTarget in display# "

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    if-eqz v3, :cond_2

    .line 74
    .line 75
    const-string v0, "  imeControlTarget in display# "

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    const-string v0, "  Minimum task size of display#"

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 98
    .line 99
    .line 100
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 107
    .line 108
    sget v0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 115
    .line 116
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 117
    .line 118
    const-string v1, "    "

    .line 119
    .line 120
    invoke-virtual {p1, p0, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
