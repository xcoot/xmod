.class public final Lcom/android/server/dreams/DreamManagerService$DreamRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final canDoze:Z

.field public dozeScreenBrightness:I

.field public dozeScreenState:I

.field public isDozing:Z

.field public final isPreview:Z

.field public isWaking:Z

.field public final name:Landroid/content/ComponentName;

.field public final token:Landroid/os/Binder;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;IZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 16
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:I

    .line 21
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 23
    iput p2, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->userId:I

    .line 25
    iput-boolean p3, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    .line 27
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    .line 29
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "DreamRecord{token="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->token:Landroid/os/Binder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", name="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", userId="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->userId:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", isPreview="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isPreview:Z

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", canDoze="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", isDozing="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isDozing:Z

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", isWaking="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->isWaking:Z

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", dozeScreenState="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenState:I

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", dozeScreenBrightness="

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget p0, p0, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->dozeScreenBrightness:I

    .line 90
    const/16 v1, 0x7d

    .line 92
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
