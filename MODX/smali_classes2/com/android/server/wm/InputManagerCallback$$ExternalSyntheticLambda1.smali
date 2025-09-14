.class public final synthetic Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InputManagerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InputManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InputManagerCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InputManagerCallback;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
