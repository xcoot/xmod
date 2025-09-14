.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->f$1:I

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p0, v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq p0, v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    if-eq p0, v0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    :cond_0
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mSelectedDatasetPickedReason:I

    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda7;->f$1:I

    .line 43
    .line 44
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mDisplayPresentationType:I

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string/jumbo v2, "default_input_method"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const-string v3, "No default IME found"

    .line 65
    .line 66
    const-string v4, "PresentationStatsEventLogger"

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .line 94
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mInlineSuggestionHostUid:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    const-string p0, "Couldn\'t find packageName: "

    .line 108
    .line 109
    invoke-static {p0, v1, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
