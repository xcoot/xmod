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

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ColorFade;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ColorFade;

    .line 3
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 5
    const-string v1, "ColorFade"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string/jumbo v0, "destroy"

    .line 15
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 20
    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 25
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 32
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 38
    const-string/jumbo v0, "glDeleteTextures"

    .line 41
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 47
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 49
    const/4 v3, 0x2

    .line 50
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 53
    const-string/jumbo v0, "glDeleteBuffers"

    .line 56
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 70
    throw v0

    .line 71
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 77
    if-eqz v2, :cond_3

    .line 79
    invoke-static {v0, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string v2, "ColorFade destroyEglContext destorySurface DisplayID : "

    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget p0, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 94
    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 97
    return-void
.end method
