.class public final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public final mGlobalAmLock:Ljava/lang/Object;

.field public final mPersistentVrModeListener:Lcom/android/server/wm/VrController$1;

.field public mVrRenderThreadTid:I

.field public mVrService:Lcom/android/server/vr/VrManagerService$LocalService;

.field public volatile mVrState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    filled-new-array {v0, v1, v2}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    sput-object v3, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    .line 9
    .line 10
    filled-new-array {v0, v1, v2}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/wm/VrController$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Lcom/android/server/wm/VrController$1;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final setVrRenderThreadLocked(IIZ)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    iget v3, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 12
    .line 13
    and-int/lit8 v3, v3, 0x2

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v1, v2

    .line 19
    :goto_1
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq p2, v2, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :cond_3
    :goto_2
    if-nez p3, :cond_6

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    const-string/jumbo p1, "system not in VR mode."

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_4
    if-eqz v1, :cond_5

    .line 41
    .line 42
    const-string/jumbo p1, "system in persistent VR mode."

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_5
    const-string p1, "caller is not the current top application."

    .line 47
    .line 48
    :goto_3
    const-string p2, "Failed to set VR thread, "

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "VrController"

    .line 55
    .line 56
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_6
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 60
    .line 61
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "[VrState=0x%x,VrRenderThreadTid=%d]"

    .line 18
    .line 19
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final updateVrRenderThreadLocked(IZ)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    if-lez v0, :cond_1

    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 13
    .line 14
    :cond_1
    if-lez p1, :cond_2

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_2
    iget p0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 22
    .line 23
    return p0
.end method
