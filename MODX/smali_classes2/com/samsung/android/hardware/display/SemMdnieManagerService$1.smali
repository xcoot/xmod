.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 12
    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    iget-object v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

    .line 16
    .line 17
    const-string/jumbo v2, "optical"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_5

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    if-nez p1, :cond_5

    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 47
    .line 48
    iget v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    const/4 v3, 0x1

    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    const/4 v2, 0x4

    .line 55
    if-eq v1, v2, :cond_1

    .line 56
    .line 57
    if-ne v1, v3, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x2

    .line 61
    iput v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    iput v3, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 65
    .line 66
    :goto_1
    iget v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 67
    .line 68
    iget v2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    .line 69
    .line 70
    if-eq v1, v2, :cond_5

    .line 71
    .line 72
    iput v1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayStatePrev:I

    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v1, "DisplayListener onDisplayChanged. mAlwaysOnDisplayEnabled : "

    .line 77
    .line 78
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 82
    .line 83
    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, " , mDisplayOn : "

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 94
    .line 95
    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " , mDisplayState : "

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 106
    .line 107
    iget v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, " , mWorkBlueFilter : "

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 118
    .line 119
    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mWorkBlueFilter:Z

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, " , mNightModeBlock : "

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 130
    .line 131
    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 132
    .line 133
    const-string v2, "SemMdnieManagerService"

    .line 134
    .line 135
    invoke-static {v2, p1, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 139
    .line 140
    iget-object p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    const-string v1, "DisplaySolution"

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 149
    .line 150
    if-nez p1, :cond_2

    .line 151
    .line 152
    const-string p1, "SemDisplaySolutionManager is null"

    .line 153
    .line 154
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move p1, v3

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isBlueLightFilterScheduledTime()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 164
    .line 165
    iget-boolean v1, v1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 166
    .line 167
    if-nez v1, :cond_3

    .line 168
    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    const/4 v1, -0x2

    .line 173
    const-string v2, "blue_light_filter"

    .line 174
    .line 175
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-ne p1, v3, :cond_3

    .line 180
    .line 181
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 182
    .line 183
    iget-boolean v0, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeBlock:Z

    .line 184
    .line 185
    if-nez v0, :cond_3

    .line 186
    .line 187
    iput-boolean v3, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 188
    .line 189
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$1;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 190
    .line 191
    iget p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 192
    .line 193
    if-ne p1, v3, :cond_4

    .line 194
    .line 195
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 196
    .line 197
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 198
    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(IZ)Z

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 204
    .line 205
    iget v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 206
    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 208
    .line 209
    .line 210
    :cond_5
    :goto_3
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
