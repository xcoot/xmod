.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 28
    .line 29
    invoke-virtual {v3, v0, v2}, Lcom/android/server/flags/FlagCache;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 38
    .line 39
    invoke-virtual {v3, v0, v2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagChangeCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v0, v2, v4}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;->onFlagChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method
