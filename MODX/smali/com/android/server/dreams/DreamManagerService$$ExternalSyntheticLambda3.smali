.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;->f$0:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda3;->f$0:Z

    .line 3
    check-cast p1, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;

    .line 5
    invoke-interface {p1, p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onKeepDreamingWhenUnpluggingChanged(Z)V

    .line 8
    return-void
.end method
