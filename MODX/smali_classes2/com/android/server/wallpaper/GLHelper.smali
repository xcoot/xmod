.class public abstract Lcom/android/server/wallpaper/GLHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sMaxTextureSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const/16 v0, 0x3038

    .line 2
    .line 3
    const-string/jumbo v1, "sys.max_texture_size"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    const-string v1, "eglGetDisplay failed: "

    .line 16
    .line 17
    const-string v3, "eglCreateContext failed: "

    .line 18
    .line 19
    const-string v4, "eglChooseConfig failed: "

    .line 20
    .line 21
    const-string v5, "eglInitialize failed: "

    .line 22
    .line 23
    :try_start_0
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 24
    .line 25
    .line 26
    move-result-object v14

    .line 27
    if-eqz v14, :cond_6

    .line 28
    .line 29
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 30
    .line 31
    if-eq v14, v6, :cond_6

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v15, 0x1

    .line 35
    invoke-static {v14, v1, v2, v1, v15}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_5

    .line 40
    .line 41
    new-array v5, v15, [I

    .line 42
    .line 43
    new-array v13, v15, [Landroid/opengl/EGLConfig;

    .line 44
    .line 45
    const/16 v6, 0x11

    .line 46
    .line 47
    new-array v7, v6, [I

    .line 48
    .line 49
    fill-array-data v7, :array_0

    .line 50
    .line 51
    .line 52
    const/4 v11, 0x1

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    move-object v6, v14

    .line 58
    move-object v9, v13

    .line 59
    move-object v12, v5

    .line 60
    move-object/from16 v17, v13

    .line 61
    .line 62
    move/from16 v13, v16

    .line 63
    .line 64
    invoke-static/range {v6 .. v13}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    aget v4, v5, v2

    .line 71
    .line 72
    if-lez v4, :cond_1

    .line 73
    .line 74
    aget-object v1, v17, v2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const/16 v4, 0x3098

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    filled-new-array {v4, v5, v0}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 90
    .line 91
    invoke-static {v14, v1, v5, v4, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 98
    .line 99
    if-eq v4, v5, :cond_2

    .line 100
    .line 101
    const/16 v3, 0x3057

    .line 102
    .line 103
    const/16 v5, 0x3056

    .line 104
    .line 105
    filled-new-array {v3, v15, v5, v15, v0}, [I

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v14, v1, v0, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v14, v0, v0, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 114
    .line 115
    .line 116
    new-array v1, v15, [I

    .line 117
    .line 118
    const/16 v3, 0xd33

    .line 119
    .line 120
    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 121
    .line 122
    .line 123
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 124
    .line 125
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 126
    .line 127
    invoke-static {v14, v3, v3, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 128
    .line 129
    .line 130
    invoke-static {v14, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 131
    .line 132
    .line 133
    invoke-static {v14, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 134
    .line 135
    .line 136
    invoke-static {v14}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 137
    .line 138
    .line 139
    aget v0, v1, v2

    .line 140
    .line 141
    :goto_1
    move v1, v0

    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/RuntimeException;

    .line 165
    .line 166
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v1

    .line 170
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 171
    .line 172
    const-string v1, "eglConfig not initialized!"

    .line 173
    .line 174
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/RuntimeException;

    .line 199
    .line 200
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/RuntimeException;

    .line 225
    .line 226
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/RuntimeException;

    .line 251
    .line 252
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_2
    const-string v1, "GLHelper"

    .line 257
    .line 258
    const-string v2, "Retrieve from GL failed"

    .line 259
    .line 260
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .line 262
    .line 263
    const v0, 0x7fffffff

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :goto_3
    sput v1, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    .line 268
    .line 269
    return-void

    .line 270
    nop

    .line 271
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3025
        0x0
        0x3026
        0x0
        0x3027
        0x3038
        0x3038
    .end array-data
.end method
