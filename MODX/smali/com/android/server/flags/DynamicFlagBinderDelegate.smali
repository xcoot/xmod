.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;


# instance fields
.field public final mCallbacks:Ljava/util/Map;

.field public final mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

.field public final mDynamicFlags:Lcom/android/server/flags/FlagCache;

.field public final mFlagChangeCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/flags/FlagCache;

    .line 6
    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    .line 18
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$1;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    .line 25
    new-instance v0, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;)V

    .line 30
    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagChangeCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    .line 32
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 34
    iput-object v0, p1, Lcom/android/server/flags/FlagOverrideStore;->mCallback:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda1;

    .line 36
    return-void
.end method


# virtual methods
.method public final getFlagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 16
    invoke-direct {v1, p1, p2}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    .line 25
    if-nez v1, :cond_1

    .line 27
    if-nez v0, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    :cond_1
    if-nez v0, :cond_2

    .line 37
    invoke-static {p1, p2, p3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    :cond_2
    return-object v0
.end method
