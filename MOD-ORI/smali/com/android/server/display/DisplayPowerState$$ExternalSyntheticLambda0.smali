.class public final synthetic Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/ColorFade;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ColorFade;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ColorFade;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ColorFade;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 4
    .line 5
    const-string v1, "ColorFade"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "destroy"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "glDeleteTextures"

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 48
    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "glDeleteBuffers"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "ColorFade destroyEglContext destorySurface DisplayID : "

    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget p0, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 93
    .line 94
    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
