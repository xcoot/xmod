.class public final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mBLASTSurfaceControl:Landroid/view/SurfaceControl;

.field public mContext:Landroid/content/Context;

.field public mCreatedResources:Z

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayLayerStack:I

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayWidth:I

.field public mEglConfig:Landroid/opengl/EGLConfig;

.field public mEglContext:Landroid/opengl/EGLContext;

.field public mEglDisplay:Landroid/opengl/EGLDisplay;

.field public mEglSurface:Landroid/opengl/EGLSurface;

.field public final mGLBuffers:[I

.field public mGammaLoc:I

.field public mHeightLoc:I

.field public mIsDejanking:Z

.field public mIsResolutionChanged:Z

.field public mLastWasProtectedContent:Z

.field public mLastWasWideColor:Z

.field public mMaxRadius:F

.field public mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mMinRadius:F

.field public mMode:I

.field public mOpacityLoc:I

.field public mPrepared:Z

.field public mProgram:I

.field public final mProjMatrix:[F

.field public mProjMatrixLoc:I

.field public mRadiusLoc:I

.field public final mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

.field public mSurface:Landroid/view/Surface;

.field public mSurfaceAlpha:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field public mSurfaceVisible:Z

.field public final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field public mTexCoordLoc:I

.field public final mTexMatrix:[F

.field public mTexMatrixLoc:I

.field public final mTexNames:[I

.field public mTexNamesGenerated:Z

.field public mTexUnitLoc:I

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mVertexBuffer:Ljava/nio/FloatBuffer;

.field public mVertexLoc:I

.field public mVignetteAlphaLoc:I

.field public mWidthLoc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ColorFade"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 9
    return-void
.end method

.method public constructor <init>(ILandroid/hardware/display/DisplayManagerInternal;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    .line 12
    const/16 v0, 0x10

    .line 14
    new-array v1, v0, [F

    .line 16
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 18
    new-array v0, v0, [F

    .line 20
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 22
    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [I

    .line 25
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 30
    const/16 v0, 0x20

    .line 32
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 49
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 66
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 68
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 73
    new-instance v0, Lcom/android/server/display/ColorFade$1;

    .line 75
    invoke-direct {v0, p0}, Lcom/android/server/display/ColorFade$1;-><init>(Lcom/android/server/display/ColorFade;)V

    .line 78
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    .line 80
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 82
    iput-object p2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 84
    return-void
.end method

.method public static checkGlErrors(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const-string v0, " failed: error "

    .line 10
    invoke-static {v1, p0, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/Throwable;

    .line 16
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 19
    const-string v2, "ColorFade"

    .line 21
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return v0
.end method

.method public static loadShader(Landroid/content/Context;II)I
    .locals 4

    .line 1
    const-string v0, "ColorFade"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 10
    move-result-object p0

    .line 11
    new-instance v1, Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/io/InputStreamReader;

    .line 15
    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 18
    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 28
    move-result p0

    .line 29
    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 32
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 35
    const/4 p1, 0x1

    .line 36
    new-array p1, p1, [I

    .line 38
    const v1, 0x8b81

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {p0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 45
    aget p1, p1, v2

    .line 47
    if-nez p1, :cond_0

    .line 49
    const-string p1, "Could not compile shader "

    .line 51
    const-string v1, ", "

    .line 53
    const-string v3, ":"

    .line 55
    invoke-static {p0, p2, p1, v1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 79
    move p0, v2

    .line 80
    :cond_0
    return p0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "Unrecognized shader "

    .line 86
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Ljava/lang/RuntimeException;

    .line 105
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    throw p1
.end method

.method public static logEglError(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " failed: error "

    .line 3
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Ljava/lang/Throwable;

    .line 20
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 23
    const-string v1, "ColorFade"

    .line 25
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    return-void
.end method


# virtual methods
.method public final attachEglContext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 9
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 11
    invoke-static {v2, v0, v0, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_1

    .line 17
    const-string/jumbo p0, "eglMakeCurrent"

    .line 20
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    :cond_1
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final createEglSurface(ZZ)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    .line 9
    if-eq p2, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 17
    if-eqz v3, :cond_2

    .line 19
    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 23
    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 31
    if-nez v0, :cond_5

    .line 33
    const/4 v0, 0x5

    .line 34
    new-array v0, v0, [I

    .line 36
    const/16 v3, 0x3038

    .line 38
    aput v3, v0, v1

    .line 40
    aput v3, v0, v2

    .line 42
    const/4 v4, 0x2

    .line 43
    aput v3, v0, v4

    .line 45
    const/4 v5, 0x3

    .line 46
    aput v3, v0, v5

    .line 48
    const/4 v5, 0x4

    .line 49
    aput v3, v0, v5

    .line 51
    if-eqz p2, :cond_3

    .line 53
    const/16 p2, 0x309d

    .line 55
    aput p2, v0, v1

    .line 57
    const/16 p2, 0x3490

    .line 59
    aput p2, v0, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v4, v1

    .line 63
    :goto_2
    if-eqz p1, :cond_4

    .line 65
    add-int/lit8 p1, v4, 0x1

    .line 67
    const/16 p2, 0x32c0

    .line 69
    aput p2, v0, v4

    .line 71
    aput v2, v0, p1

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 75
    iget-object p2, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 77
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 79
    invoke-static {p1, p2, v3, v0, v1}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 85
    if-nez p1, :cond_5

    .line 87
    const-string/jumbo p0, "eglCreateWindowSurface"

    .line 90
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 93
    return v1

    .line 94
    :cond_5
    return v2
.end method

.method public final createSurfaceControl(Z)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    iget v2, v0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 7
    const-string v3, "ColorFade_d"

    .line 9
    iget-object v4, v0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x2

    .line 13
    if-eqz v4, :cond_0

    .line 15
    iget v7, v0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 17
    if-eq v7, v6, :cond_0

    .line 19
    iget-object v0, v0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    invoke-virtual {v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 28
    return v5

    .line 29
    :cond_0
    const/4 v4, 0x0

    .line 30
    :try_start_0
    new-instance v7, Landroid/view/SurfaceControl$Builder;

    .line 32
    invoke-direct {v7}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v7, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 50
    move-result-object v3

    .line 51
    const/16 v7, 0x1e

    .line 53
    invoke-virtual {v3, v7, v6}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 56
    move-result-object v3

    .line 57
    const-string v8, "ColorFade.createSurface"

    .line 59
    invoke-virtual {v3, v8}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 62
    move-result-object v3

    .line 63
    iget v8, v0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 65
    if-ne v8, v6, :cond_1

    .line 67
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    goto/16 :goto_2

    .line 74
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 77
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 80
    :goto_0
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 83
    move-result-object v3

    .line 84
    iput-object v3, v0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v8, v0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 88
    iget v9, v0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 90
    invoke-virtual {v8, v3, v9}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 93
    iget-object v3, v0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 95
    iget-object v8, v0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 97
    iget v9, v0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 99
    iget v10, v0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 101
    invoke-virtual {v3, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 104
    iget v3, v0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 106
    if-eq v3, v6, :cond_2

    .line 108
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    .line 110
    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    const-string v9, "ColorFade BLAST_d"

    .line 117
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 130
    move-result-object v2

    .line 131
    iget-object v3, v0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 133
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1, v7, v6}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 160
    move-result-object v1

    .line 161
    iput-object v1, v0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 163
    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    .line 165
    iget-object v8, v0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 167
    iget v9, v0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 169
    iget v10, v0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 171
    const/4 v11, -0x1

    .line 172
    const-string v7, "ColorFade"

    .line 174
    move-object v6, v1

    .line 175
    invoke-direct/range {v6 .. v11}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 178
    iput-object v1, v0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 180
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 183
    move-result-object v1

    .line 184
    iput-object v1, v0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 186
    new-instance v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 188
    iget-object v7, v0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 190
    iget-object v9, v0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 192
    iget-object v10, v0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 194
    iget-object v11, v0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 196
    iget v12, v0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 198
    iget v13, v0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 200
    iget v8, v0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 202
    move-object v6, v1

    .line 203
    invoke-direct/range {v6 .. v13}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;II)V

    .line 206
    iput-object v1, v0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    new-instance v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 211
    iget-object v15, v0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 213
    iget-object v2, v0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 215
    iget v3, v0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 217
    iget v4, v0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 219
    iget v6, v0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 221
    const/16 v18, 0x0

    .line 223
    const/16 v19, 0x0

    .line 225
    move-object v14, v1

    .line 226
    move/from16 v16, v6

    .line 228
    move-object/from16 v17, v2

    .line 230
    move/from16 v20, v3

    .line 232
    move/from16 v21, v4

    .line 234
    invoke-direct/range {v14 .. v21}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;Landroid/graphics/BLASTBufferQueue;Landroid/view/SurfaceControl;II)V

    .line 237
    iput-object v1, v0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 239
    :goto_1
    iget-object v1, v0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 241
    iget-object v2, v0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    .line 243
    iput-object v2, v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mCallback:Lcom/android/server/display/ColorFade$1;

    .line 245
    iget-object v2, v0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 247
    invoke-virtual {v1, v2}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 250
    iget-object v0, v0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 252
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 255
    return v5

    .line 256
    :goto_2
    const-string v1, "ColorFade"

    .line 258
    const-string v2, "Unable to create surface."

    .line 260
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return v4
.end method

.method public final destroyEglSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 7
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    const-string/jumbo v0, "eglDestroySurface"

    .line 16
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 22
    :cond_1
    return-void
.end method

.method public final destroyGLShaders()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 12
    const-string/jumbo p0, "glDeleteProgram"

    .line 15
    invoke-static {p0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 18
    return-void
.end method

.method public final destroySurface()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iput-object v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 11
    iget-object v2, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 13
    if-eqz v2, :cond_0

    .line 15
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 17
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 20
    iget-object v3, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 29
    iput-object v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mChildSurfaceControl:Landroid/view/SurfaceControl;

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v2, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 37
    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 40
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 42
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 44
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 53
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 55
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 60
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 64
    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 69
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTSurfaceControl:Landroid/view/SurfaceControl;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 73
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 76
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 78
    :cond_2
    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 80
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 83
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p0

    .line 89
    :cond_3
    :goto_2
    return-void
.end method

.method public final detachEglContext()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 7
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 9
    invoke-static {p0, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 12
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "ColorFade"

    .line 7
    const-string/jumbo v1, "dismiss"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 15
    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 23
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    .line 31
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 33
    :cond_2
    return-void
.end method

.method public final dismissResources()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "ColorFade"

    .line 7
    const-string/jumbo v1, "dismissResources"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 15
    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 20
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 27
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 33
    const-string/jumbo v0, "glDeleteTextures"

    .line 36
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 42
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 48
    const-string/jumbo v0, "glDeleteBuffers"

    .line 51
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 60
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 63
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

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
    return-void
.end method

.method public final draw(F)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "ColorFade"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "drawFrame: level="

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 27
    if-nez v0, :cond_1

    .line 29
    const-string p0, "ColorFade"

    .line 31
    const-string/jumbo p1, "not prepared. so returned"

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    .line 40
    monitor-enter v0

    .line 41
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 43
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 51
    const-string p0, "ColorFade"

    .line 53
    const-string p1, "Failed to handle resolution change!"

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_3

    .line 63
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 66
    const/4 v1, 0x2

    .line 67
    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    if-ne v0, v1, :cond_3

    .line 71
    sub-float/2addr v2, p1

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->showSurface(F)V

    .line 75
    return-void

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_4

    .line 82
    const-string p0, "ColorFade"

    .line 84
    const-string p1, "attachEglContext() failed. so returned"

    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 90
    :cond_4
    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-static {v0, v0, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 94
    const/16 v1, 0x4000

    .line 96
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 99
    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 101
    const/4 v3, 0x3

    .line 102
    if-ne v1, v3, :cond_5

    .line 104
    iget v1, p0, Lcom/android/server/display/ColorFade;->mMinRadius:F

    .line 106
    iget v3, p0, Lcom/android/server/display/ColorFade;->mMaxRadius:F

    .line 108
    sub-float/2addr v3, v1

    .line 109
    mul-float/2addr v3, p1

    .line 110
    add-float/2addr v3, v1

    .line 111
    const/high16 v1, 0x3f000000    # 0.5f

    .line 113
    sub-float v1, p1, v1

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 118
    move-result v0

    .line 119
    const/high16 v1, 0x40000000    # 2.0f

    .line 121
    mul-float/2addr v1, v0

    .line 122
    sub-float v0, v2, v1

    .line 124
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    .line 127
    goto :goto_1

    .line 128
    :catchall_1
    move-exception p1

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    sub-float p1, v2, p1

    .line 132
    float-to-double v3, p1

    .line 133
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 138
    mul-double/2addr v5, v3

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    .line 142
    move-result-wide v5

    .line 143
    const-wide/16 v7, 0x0

    .line 145
    cmpg-double p1, v5, v7

    .line 147
    if-gez p1, :cond_6

    .line 149
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 151
    goto :goto_0

    .line 152
    :cond_6
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 154
    :goto_0
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 156
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 159
    move-result-wide v3

    .line 160
    neg-double v3, v3

    .line 161
    double-to-float p1, v3

    .line 162
    add-float/2addr p1, v2

    .line 163
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 165
    mul-double/2addr v7, v3

    .line 166
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 169
    move-result-wide v5

    .line 170
    mul-double/2addr v7, v5

    .line 171
    add-double/2addr v7, v3

    .line 172
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 177
    mul-double/2addr v7, v3

    .line 178
    const-wide v3, 0x3fb999999999999aL    # 0.1

    .line 183
    add-double/2addr v7, v3

    .line 184
    double-to-float v1, v7

    .line 185
    div-float v1, v2, v1

    .line 187
    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/android/server/display/ColorFade;->drawFaded(FFFF)V

    .line 190
    :goto_1
    const-string/jumbo p1, "drawFrame"

    .line 193
    invoke-static {p1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 196
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    if-eqz p1, :cond_7

    .line 199
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 202
    return-void

    .line 203
    :cond_7
    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 205
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 207
    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->showSurface(F)V

    .line 216
    return-void

    .line 217
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 220
    throw p1

    .line 221
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    throw p0
.end method

.method public final drawFaded(FFFF)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "drawFaded: opacity="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", gamma="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " radius="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " vignetteAlpha="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "ColorFade"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 51
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 54
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 56
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 58
    const/4 v2, 0x1

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 63
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 65
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 67
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 70
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 72
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 75
    iget p1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 77
    const/4 v0, 0x3

    .line 78
    if-ne p1, v0, :cond_1

    .line 80
    iget p1, p0, Lcom/android/server/display/ColorFade;->mRadiusLoc:I

    .line 82
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 85
    iget p1, p0, Lcom/android/server/display/ColorFade;->mWidthLoc:I

    .line 87
    iget p2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 89
    int-to-float p2, p2

    .line 90
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 93
    iget p1, p0, Lcom/android/server/display/ColorFade;->mHeightLoc:I

    .line 95
    iget p2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 97
    int-to-float p2, p2

    .line 98
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 101
    iget p1, p0, Lcom/android/server/display/ColorFade;->mVignetteAlphaLoc:I

    .line 103
    invoke-static {p1, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 109
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 112
    :goto_0
    const p1, 0x84c0

    .line 115
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 118
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 120
    aget p1, p1, v3

    .line 122
    const p2, 0x8d65

    .line 125
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 130
    aget p3, p1, v3

    .line 132
    const p4, 0x8892

    .line 135
    invoke-static {p4, p3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 138
    iget p3, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 140
    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 143
    iget v4, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 145
    const/4 v8, 0x0

    .line 146
    const/4 v9, 0x0

    .line 147
    const/4 v5, 0x2

    .line 148
    const/16 v6, 0x1406

    .line 150
    const/4 v7, 0x0

    .line 151
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 154
    aget p1, p1, v2

    .line 156
    invoke-static {p4, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 159
    iget p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 161
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 164
    iget v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 166
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 169
    const/4 p0, 0x6

    .line 170
    const/4 p1, 0x4

    .line 171
    invoke-static {p0, v3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 174
    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 177
    invoke-static {p4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 180
    return-void
.end method

.method public final handleResolutionChange()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 3
    iget v1, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    .line 5
    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 7
    iget v0, v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    .line 9
    iput v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 11
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 17
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 19
    return v1

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 22
    const-string v4, "ColorFade"

    .line 24
    if-eqz v3, :cond_8

    .line 26
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 28
    if-nez v5, :cond_1

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 40
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 42
    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 49
    if-nez v0, :cond_4

    .line 51
    const-string/jumbo p0, "handleResolutionChange(): mEglDisplay is null"

    .line 54
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v2

    .line 58
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 60
    iget-boolean v3, p0, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    .line 62
    invoke-virtual {p0, v0, v3}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    .line 65
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    .line 67
    if-eq v0, v1, :cond_6

    .line 69
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_5

    .line 75
    const-string/jumbo p0, "handleResolutionChange(): attachEglContext fail !!!"

    .line 78
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v2

    .line 82
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 84
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 86
    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 97
    throw v0

    .line 98
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 100
    if-nez v0, :cond_7

    .line 102
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V

    .line 105
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 107
    const-string/jumbo p0, "handleResolutionChange(): Done!"

    .line 110
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1

    .line 114
    :cond_8
    :goto_2
    const-string/jumbo v0, "handleResolutionChange(): mSurface or mSurfaceControl is null"

    .line 117
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 122
    return v2
.end method

.method public final initGLBuffers()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 3
    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 8
    int-to-float v2, v2

    .line 9
    sget-boolean v3, Lcom/android/server/display/ColorFade;->DEBUG:Z

    .line 11
    if-eqz v3, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v4, "setQuad: x=0.0, y=0.0, w="

    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string v4, ", h="

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    const-string v4, "ColorFade"

    .line 38
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v0, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {v0, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 50
    const/4 v6, 0x2

    .line 51
    invoke-virtual {v0, v6, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 54
    add-float/2addr v2, v4

    .line 55
    const/4 v7, 0x3

    .line 56
    invoke-virtual {v0, v7, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 59
    add-float/2addr v1, v4

    .line 60
    const/4 v7, 0x4

    .line 61
    invoke-virtual {v0, v7, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 64
    const/4 v8, 0x5

    .line 65
    invoke-virtual {v0, v8, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 68
    const/4 v2, 0x6

    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 72
    const/4 v1, 0x7

    .line 73
    invoke-virtual {v0, v1, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 78
    aget v0, v0, v3

    .line 80
    const v1, 0x8d65

    .line 83
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 86
    const/16 v0, 0x2800

    .line 88
    const/16 v2, 0x2600

    .line 90
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 93
    const/16 v0, 0x2801

    .line 95
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 98
    const/16 v0, 0x2802

    .line 100
    const v2, 0x812f

    .line 103
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 106
    const/16 v0, 0x2803

    .line 108
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 111
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 114
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 116
    invoke-static {v6, v0, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 119
    aget v1, v0, v3

    .line 121
    const v2, 0x8892

    .line 124
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 127
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 129
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    .line 132
    move-result v1

    .line 133
    mul-int/2addr v1, v7

    .line 134
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 136
    const v6, 0x88e4

    .line 139
    invoke-static {v2, v1, v4, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 142
    aget v0, v0, v5

    .line 144
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 147
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    .line 152
    move-result v0

    .line 153
    mul-int/2addr v0, v7

    .line 154
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 156
    invoke-static {v2, v0, p0, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 159
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 162
    return-void
.end method

.method public final initGLShaders(Landroid/content/Context;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    const v0, 0x110000e

    .line 9
    const v2, 0x110000d

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x1100003

    .line 16
    const v2, 0x1100002

    .line 19
    :goto_0
    const v3, 0x8b31

    .line 22
    invoke-static {p1, v0, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    .line 25
    move-result v0

    .line 26
    const v3, 0x8b30

    .line 29
    invoke-static {p1, v2, v3}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    .line 32
    move-result p1

    .line 33
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_3

    .line 39
    if-nez p1, :cond_1

    .line 41
    goto/16 :goto_2

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 46
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 49
    move-result v3

    .line 50
    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 52
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 55
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 57
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 60
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 63
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 66
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 68
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 71
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 73
    const-string/jumbo v0, "position"

    .line 76
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 82
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 84
    const-string/jumbo v0, "uv"

    .line 87
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 93
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 95
    const-string/jumbo v0, "proj_matrix"

    .line 98
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 101
    move-result p1

    .line 102
    iput p1, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 104
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 106
    const-string/jumbo v0, "tex_matrix"

    .line 109
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 115
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 117
    const-string/jumbo v0, "opacity"

    .line 120
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 123
    move-result p1

    .line 124
    iput p1, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 126
    iget p1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 128
    if-ne p1, v1, :cond_2

    .line 130
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 132
    const-string/jumbo v0, "radius"

    .line 135
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lcom/android/server/display/ColorFade;->mRadiusLoc:I

    .line 141
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 143
    const-string/jumbo v0, "width"

    .line 146
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 149
    move-result p1

    .line 150
    iput p1, p0, Lcom/android/server/display/ColorFade;->mWidthLoc:I

    .line 152
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 154
    const-string/jumbo v0, "height"

    .line 157
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 160
    move-result p1

    .line 161
    iput p1, p0, Lcom/android/server/display/ColorFade;->mHeightLoc:I

    .line 163
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 165
    const-string/jumbo v0, "vignetteAlpha"

    .line 168
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 171
    move-result p1

    .line 172
    iput p1, p0, Lcom/android/server/display/ColorFade;->mVignetteAlphaLoc:I

    .line 174
    goto :goto_1

    .line 175
    :cond_2
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 177
    const-string/jumbo v0, "gamma"

    .line 180
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 183
    move-result p1

    .line 184
    iput p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 186
    :goto_1
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 188
    const-string/jumbo v0, "texUnit"

    .line 191
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 194
    move-result p1

    .line 195
    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 197
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 199
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 202
    iget p0, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 204
    invoke-static {p0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 207
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 210
    const/4 p0, 0x1

    .line 211
    return p0

    .line 212
    :cond_3
    :goto_2
    return v2
.end method

.method public final ortho(FF)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    sub-float v1, p1, v0

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    div-float v3, v2, v1

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object p0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 11
    aput v3, p0, v4

    .line 13
    const/4 v3, 0x1

    .line 14
    aput v0, p0, v3

    .line 16
    const/4 v3, 0x2

    .line 17
    aput v0, p0, v3

    .line 19
    const/4 v3, 0x3

    .line 20
    aput v0, p0, v3

    .line 22
    const/4 v3, 0x4

    .line 23
    aput v0, p0, v3

    .line 25
    sub-float v3, p2, v0

    .line 27
    div-float/2addr v2, v3

    .line 28
    const/4 v4, 0x5

    .line 29
    aput v2, p0, v4

    .line 31
    const/4 v2, 0x6

    .line 32
    aput v0, p0, v2

    .line 34
    const/4 v2, 0x7

    .line 35
    aput v0, p0, v2

    .line 37
    const/16 v2, 0x8

    .line 39
    aput v0, p0, v2

    .line 41
    const/16 v2, 0x9

    .line 43
    aput v0, p0, v2

    .line 45
    const/high16 v2, -0x40800000    # -1.0f

    .line 47
    const/16 v4, 0xa

    .line 49
    aput v2, p0, v4

    .line 51
    const/16 v2, 0xb

    .line 53
    aput v0, p0, v2

    .line 55
    add-float/2addr p1, v0

    .line 56
    neg-float p1, p1

    .line 57
    div-float/2addr p1, v1

    .line 58
    const/16 v1, 0xc

    .line 60
    aput p1, p0, v1

    .line 62
    add-float/2addr p2, v0

    .line 63
    neg-float p1, p2

    .line 64
    div-float/2addr p1, v3

    .line 65
    const/16 p2, 0xd

    .line 67
    aput p1, p0, p2

    .line 69
    const/high16 p1, -0x80000000

    .line 71
    const/16 p2, 0xe

    .line 73
    aput p1, p0, p2

    .line 75
    const/16 p1, 0xf

    .line 77
    const/high16 p2, 0x3f800000    # 1.0f

    .line 79
    aput p2, p0, p1

    .line 81
    return-void
.end method

.method public final showSurface(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 7
    cmpl-float v0, v0, p1

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 15
    const v2, 0x40000001    # 2.0000002f

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 40
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 42
    :cond_1
    return-void
.end method
