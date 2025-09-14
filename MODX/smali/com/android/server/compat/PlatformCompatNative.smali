.class public final Lcom/android/server/compat/PlatformCompatNative;
.super Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 6
    return-void
.end method


# virtual methods
.method public final isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isChangeEnabledByUid(JI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 6
    return-void
.end method

.method public final reportChangeByUid(JI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->reportChangeByUid(JI)V

    .line 6
    return-void
.end method
