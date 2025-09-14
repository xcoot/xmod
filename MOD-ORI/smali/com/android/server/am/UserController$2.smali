.class public final Lcom/android/server/am/UserController$2;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$initializeUser:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController$$ExternalSyntheticLambda3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$2;->val$initializeUser:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$2;->val$initializeUser:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
