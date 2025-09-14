.class public final synthetic Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeprecatedAbiDialog;

.field public final synthetic f$1:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeprecatedAbiDialog;Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DeprecatedAbiDialog;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DeprecatedAbiDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/AppWarnings;

    .line 4
    .line 5
    iget p2, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(IILjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
