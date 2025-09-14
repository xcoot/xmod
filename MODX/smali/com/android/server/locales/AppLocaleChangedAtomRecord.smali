.class public final Lcom/android/server/locales/AppLocaleChangedAtomRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCaller:I

.field public final mCallingUid:I

.field public mNewLocales:Ljava/lang/String;

.field public mPrevLocales:Ljava/lang/String;

.field public mStatus:I

.field public mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 7
    const-string/jumbo v0, "default-"

    .line 10
    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 17
    iput v1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    .line 19
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 63
    :cond_0
    return-void
.end method

.method public static convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v1, "default-"

    .line 20
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    :cond_0
    return-object p0
.end method
