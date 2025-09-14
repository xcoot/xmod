.class public final Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 6
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 3
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mUid:I

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 11
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getBackgroundStartPrivileges()Landroid/app/BackgroundStartPrivileges;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GetBackgroundStartPrivilegesFunctor;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    .line 21
    :cond_0
    return-void
.end method
