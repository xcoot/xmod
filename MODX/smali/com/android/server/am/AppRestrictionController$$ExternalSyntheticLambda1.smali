.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppRestrictionController;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 6
    return-void
.end method
