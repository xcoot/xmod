.class public final synthetic Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    xor-int/2addr p2, v0

    .line 7
    iget v1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
