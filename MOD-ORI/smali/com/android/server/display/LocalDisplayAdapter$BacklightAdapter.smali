.class public final Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public mForceSurfaceControl:Z

.field public final mIsFirstDisplay:Z

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

.field public final mUseSurfaceControlBrightness:Z


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 19
    .line 20
    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsFirstDisplay:Z

    .line 21
    .line 22
    invoke-static {p4, p5}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(J)Landroid/view/SurfaceControl$StaticDisplayInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    iget-boolean p3, p3, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p3, v0

    .line 35
    :goto_0
    const-class p4, Lcom/android/server/lights/LightsManager;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    .line 55
    .line 56
    if-eqz p3, :cond_2

    .line 57
    .line 58
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 63
    .line 64
    const/16 p2, 0x9

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 75
    .line 76
    :goto_1
    return-void
.end method


# virtual methods
.method public final setBacklight(FFFFII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 11
    .line 12
    if-eqz p0, :cond_7

    .line 13
    .line 14
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p0, "LightsService"

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p2, "Brightness is not valid: "

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    monitor-enter p0

    .line 42
    :try_start_0
    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 p2, 0xff

    .line 47
    .line 48
    if-gt p1, p2, :cond_2

    .line 49
    .line 50
    and-int/lit16 p1, p1, 0xff

    .line 51
    .line 52
    shl-int/lit8 p2, p1, 0x10

    .line 53
    .line 54
    const/high16 p3, -0x1000000

    .line 55
    .line 56
    or-int/2addr p2, p3

    .line 57
    shl-int/lit8 p3, p1, 0x8

    .line 58
    .line 59
    or-int/2addr p2, p3

    .line 60
    or-int/2addr p1, p2

    .line 61
    :cond_2
    const/4 p2, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    .line 63
    .line 64
    .line 65
    monitor-exit p0

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p3}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    .line 87
    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_4
    const-string v0, "LocalDisplayAdapter"

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string/jumbo v2, "surface lcd : "

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p3, p5}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, ", "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p6}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ", "

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsFirstDisplay:Z

    .line 126
    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    const-string/jumbo v2, "main"

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    const-string/jumbo v2, "sub"

    .line 134
    .line 135
    .line 136
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, " +"

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {v1, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    .line 159
    .line 160
    .line 161
    const-string p2, "LocalDisplayAdapter"

    .line 162
    .line 163
    new-instance p4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string/jumbo v0, "surface lcd : "

    .line 166
    .line 167
    .line 168
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p3, p5}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p3, ", "

    .line 179
    .line 180
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-static {p1, p6}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(FI)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p1, ", "

    .line 191
    .line 192
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsFirstDisplay:Z

    .line 196
    .line 197
    if-eqz p0, :cond_6

    .line 198
    .line 199
    const-string/jumbo p0, "main"

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    const-string/jumbo p0, "sub"

    .line 204
    .line 205
    .line 206
    :goto_2
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p0, " -"

    .line 210
    .line 211
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :cond_7
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BacklightAdapter [useSurfaceControl="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " (force_anyway? "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "), backlight="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LightsService$LightImpl;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, "]"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
