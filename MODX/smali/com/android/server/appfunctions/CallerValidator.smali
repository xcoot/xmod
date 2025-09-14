.class public interface abstract Lcom/android/server/appfunctions/CallerValidator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract isUserOrganizationManaged(Landroid/os/UserHandle;)Z
.end method

.method public abstract validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
.end method
