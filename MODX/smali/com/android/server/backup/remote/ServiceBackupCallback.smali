.class public final Lcom/android/server/backup/remote/ServiceBackupCallback;
.super Landroid/app/backup/IBackupCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackupManager:Landroid/app/backup/IBackupManager;

.field public final mToken:I


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/backup/IBackupCallback$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 6
    iput p2, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mToken:I

    .line 8
    return-void
.end method


# virtual methods
.method public final operationComplete(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 3
    iget p0, p0, Lcom/android/server/backup/remote/ServiceBackupCallback;->mToken:I

    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V

    .line 8
    return-void
.end method
