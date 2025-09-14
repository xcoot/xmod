.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDefaultValue:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mNamespace:Ljava/lang/String;

.field public final mPids:Ljava/util/Set;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    .line 11
    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 4
    instance-of v1, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    .line 11
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    .line 13
    iget-object v2, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 21
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    .line 23
    iget-object v2, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 33
    iget-object v2, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 43
    iget-object p1, p1, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 51
    const/4 v0, 0x1

    .line 52
    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mNamespace:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result p0

    .line 27
    add-int/2addr p0, v0

    .line 28
    return p0
.end method
