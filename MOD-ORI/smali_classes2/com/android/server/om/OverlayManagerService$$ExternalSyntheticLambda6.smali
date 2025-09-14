.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/om/OverlayManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->setDynamicContrastToStandard()V

    .line 4
    .line 5
    .line 6
    const-string p0, "OverlayManager"

    .line 7
    .line 8
    const-string/jumbo v0, "setDynamicContrastToStandard done"

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method
