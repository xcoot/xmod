.class public final Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppearance:I

.field public mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mBehavior:I

.field public mDisabled1:I

.field public mDisabled2:I

.field public mImeBackDisposition:I

.field public mImeToken:Landroid/os/IBinder;

.field public mImeWindowVis:I

.field public mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mNavbarColorManagedByIme:Z

.field public mPackageName:Ljava/lang/String;

.field public mRequestedVisibleTypes:I

.field public mShowImeSwitcher:Z

.field public mTransientBarTypes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearance:I

    .line 6
    .line 7
    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 12
    .line 13
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mRequestedVisibleTypes:I

    .line 18
    .line 19
    const-string/jumbo v1, "none"

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mPackageName:Ljava/lang/String;

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 25
    .line 26
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 27
    .line 28
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 36
    .line 37
    new-array v0, v0, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 40
    .line 41
    return-void
.end method
