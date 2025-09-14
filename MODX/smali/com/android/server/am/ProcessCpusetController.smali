.class public final Lcom/android/server/am/ProcessCpusetController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mController:Lcom/android/server/am/ProcessCpusetController;


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iget-object p0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    return-void
.end method
