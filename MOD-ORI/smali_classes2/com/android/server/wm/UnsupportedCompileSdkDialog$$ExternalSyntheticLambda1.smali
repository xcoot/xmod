.class public final synthetic Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/AppWarnings;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/AppWarnings;

    .line 4
    .line 5
    xor-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
