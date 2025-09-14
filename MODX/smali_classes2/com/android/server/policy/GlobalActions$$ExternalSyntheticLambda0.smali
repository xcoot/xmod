.class public final synthetic Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/GlobalActions;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/GlobalActions;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 5
    .line 6
    return-void
.end method
