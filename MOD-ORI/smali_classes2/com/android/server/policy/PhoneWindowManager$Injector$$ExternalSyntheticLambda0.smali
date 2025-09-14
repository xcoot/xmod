.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/policy/GlobalActions;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
